#!/bin/bash -ie

#git checkout origin/950-fix-lmdb-crash-on-wls

cd agoric-sdk/packages/swing-store-lmdb
yarn test
