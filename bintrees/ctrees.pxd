#!/usr/bin/env python
#coding:utf-8
# Author:  mozman
# Purpose:
# Created: 08.05.2010

cdef extern from "ctrees.h":
    ctypedef struct PyObject:
        pass

    ctypedef struct node_t:
        node_t *link[2]
        PyObject *key
        PyObject *value

    int ct_compare(object compare, object key1, object key2)
    void ct_delete_tree(node_t *root)
    node_t *ct_find_node(node_t *root, object key, object cmp)
    PyObject *ct_get_item(node_t *root, object key, object cmp)
    node_t *ct_max_node(node_t *root)
    node_t *ct_min_node(node_t *root)
    node_t *ct_succ_node(node_t *root, object key, object cmp)
    node_t *ct_prev_node(node_t *root, object key, object cmp)
    int ct_index_of(node_t *root, object key, object cmp)
    node_t *ct_node_at(node_t *root, int index)

    # binary-tree functions
    int ct_bintree_insert(node_t **root, object key, object value, object cmp)
    int ct_bintree_remove(node_t **root, object key, object cmp)
    # avl-tree functions
    int avl_insert(node_t **root, object key, object value, object cmp)
    int avl_remove(node_t **root, object key, object cmp)
    # rb-tree functions
    int rb_insert(node_t **root, object key, object value, object cmp)
    int rb_remove(node_t **root, object key, object cmp)