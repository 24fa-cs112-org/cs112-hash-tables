#ifndef _HASHTABLE_H
#define _HASHTABLE_H

#include <set>
#include <string>
using namespace std;

class HashTable {
public:
    HashTable();

    void insert(const string &it);
    void dumpInfo();

private:
    int hash(const string &it);

    static const int TABLE_SIZE = 200;

    int mySize;  // number of elements in the hash table
};

#endif