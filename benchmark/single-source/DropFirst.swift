//===--- DropFirst.swift --------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2017 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

////////////////////////////////////////////////////////////////////////////////
// WARNING: This file is manually generated from .gyb template and should not
// be directly modified. Instead, make changes to DropFirst.swift.gyb and run
// scripts/generate_harness/generate_harness.py to regenerate this file.
////////////////////////////////////////////////////////////////////////////////

import TestsUtils

let sequenceCount = 4096
let dropCount = 1024
let suffixCount = sequenceCount - dropCount
let sumCount = suffixCount * (2 * sequenceCount - suffixCount - 1) / 2

@inline(never)
public func run_DropFirstCountableRange(_ N: Int) {
  let s = 0..<sequenceCount
  for _ in 1...20*N {
    var result = 0
    for element in s.dropFirst(dropCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in DropFirstCountableRange: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_DropFirstSequence(_ N: Int) {
  let s = sequence(first: 0) { $0 < sequenceCount - 1 ? $0 &+ 1 : nil }
  for _ in 1...20*N {
    var result = 0
    for element in s.dropFirst(dropCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in DropFirstSequence: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_DropFirstAnySequence(_ N: Int) {
  let s = AnySequence(sequence(first: 0) { $0 < sequenceCount - 1 ? $0 &+ 1 : nil })
  for _ in 1...20*N {
    var result = 0
    for element in s.dropFirst(dropCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in DropFirstAnySequence: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_DropFirstAnySeqCntRange(_ N: Int) {
  let s = AnySequence(0..<sequenceCount)
  for _ in 1...20*N {
    var result = 0
    for element in s.dropFirst(dropCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in DropFirstAnySeqCntRange: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_DropFirstAnySeqCRangeIter(_ N: Int) {
  let s = AnySequence((0..<sequenceCount).makeIterator())
  for _ in 1...20*N {
    var result = 0
    for element in s.dropFirst(dropCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in DropFirstAnySeqCRangeIter: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_DropFirstAnyCollection(_ N: Int) {
  let s = AnyCollection(0..<sequenceCount)
  for _ in 1...20*N {
    var result = 0
    for element in s.dropFirst(dropCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in DropFirstAnyCollection: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_DropFirstArray(_ N: Int) {
  let s = Array(0..<sequenceCount)
  for _ in 1...20*N {
    var result = 0
    for element in s.dropFirst(dropCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in DropFirstArray: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_DropFirstCountableRangeLazy(_ N: Int) {
  let s = (0..<sequenceCount).lazy
  for _ in 1...20*N {
    var result = 0
    for element in s.dropFirst(dropCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in DropFirstCountableRangeLazy: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_DropFirstSequenceLazy(_ N: Int) {
  let s = (sequence(first: 0) { $0 < sequenceCount - 1 ? $0 &+ 1 : nil }).lazy
  for _ in 1...20*N {
    var result = 0
    for element in s.dropFirst(dropCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in DropFirstSequenceLazy: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_DropFirstAnySequenceLazy(_ N: Int) {
  let s = (AnySequence(sequence(first: 0) { $0 < sequenceCount - 1 ? $0 &+ 1 : nil })).lazy
  for _ in 1...20*N {
    var result = 0
    for element in s.dropFirst(dropCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in DropFirstAnySequenceLazy: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_DropFirstAnySeqCntRangeLazy(_ N: Int) {
  let s = (AnySequence(0..<sequenceCount)).lazy
  for _ in 1...20*N {
    var result = 0
    for element in s.dropFirst(dropCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in DropFirstAnySeqCntRangeLazy: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_DropFirstAnySeqCRangeIterLazy(_ N: Int) {
  let s = (AnySequence((0..<sequenceCount).makeIterator())).lazy
  for _ in 1...20*N {
    var result = 0
    for element in s.dropFirst(dropCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in DropFirstAnySeqCRangeIterLazy: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_DropFirstAnyCollectionLazy(_ N: Int) {
  let s = (AnyCollection(0..<sequenceCount)).lazy
  for _ in 1...20*N {
    var result = 0
    for element in s.dropFirst(dropCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in DropFirstAnyCollectionLazy: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_DropFirstArrayLazy(_ N: Int) {
  let s = (Array(0..<sequenceCount)).lazy
  for _ in 1...20*N {
    var result = 0
    for element in s.dropFirst(dropCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in DropFirstArrayLazy: \(result) != \(sumCount)")
  }
}
