#!/bin/bash -ie

cd agoric-sdk
git checkout origin/950-fix-lmdb-crash-on-wls

cd packages/swing-store-lmdb
yarn test
