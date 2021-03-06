# contrib/ltree/Makefile

MODULE_big = ltree
OBJS = 	ltree_io.o ltree_op.o lquery_op.o _ltree_op.o crc32.o \
	ltxtquery_io.o ltxtquery_op.o ltree_gist.o _ltree_gist.o
PG_CPPFLAGS = -DLOWER_NODE

EXTENSION = ltree
DATA = ltree--1.0.sql ltree--unpackaged--1.0.sql

REGRESS = ltree

PG_CONFIG ?= pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
