// Copyright 2016 PDFium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Original code copyright 2014 Foxit Software Inc. http://www.foxitsoftware.com

#include "fxjs/cfxjse_isolatetracker.h"

#include <algorithm>

CFXJSE_IsolateTracker::CFXJSE_IsolateTracker() {}

CFXJSE_IsolateTracker::~CFXJSE_IsolateTracker() {}

void CFXJSE_IsolateTracker::Append(v8::Isolate* pIsolate) {
  m_OwnedIsolates.push_back(pIsolate);
}

void CFXJSE_IsolateTracker::Remove(
    v8::Isolate* pIsolate,
    CFXJSE_IsolateTracker::DisposeCallback lpfnDisposeCallback) {
  auto it = std::find(m_OwnedIsolates.begin(), m_OwnedIsolates.end(), pIsolate);
  bool bFound = it != m_OwnedIsolates.end();
  if (bFound)
    m_OwnedIsolates.erase(it);
  lpfnDisposeCallback(pIsolate, bFound);
}

void CFXJSE_IsolateTracker::RemoveAll(
    CFXJSE_IsolateTracker::DisposeCallback lpfnDisposeCallback) {
  for (v8::Isolate* pIsolate : m_OwnedIsolates)
    lpfnDisposeCallback(pIsolate, true);

  m_OwnedIsolates.clear();
}
