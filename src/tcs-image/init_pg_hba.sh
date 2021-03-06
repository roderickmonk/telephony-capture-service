#!/bin/bash

rm $PGDATA/pg_hba.conf

{ echo; echo "local all all trust"; } | gosu postgres tee -a "$PGDATA/pg_hba.conf" > /dev/null
{ echo; echo "local replication all trust"; } | gosu postgres tee -a "$PGDATA/pg_hba.conf" > /dev/null
{ echo; echo "host all all 127.0.0.1/32 trust"; } | gosu postgres tee -a "$PGDATA/pg_hba.conf" > /dev/null
{ echo; echo "host replication all 127.0.0.1/32 trust"; } | gosu postgres tee -a "$PGDATA/pg_hba.conf" > /dev/null
{ echo; echo "host all all 172.0.0.1/8 trust"; } | gosu postgres tee -a "$PGDATA/pg_hba.conf" > /dev/null
{ echo; echo "host replication all 172.0.0.0/8 trust"; } | gosu postgres tee -a "$PGDATA/pg_hba.conf" > /dev/null
{ echo; echo "host all all 192.168.0.1/16 trust"; } | gosu postgres tee -a "$PGDATA/pg_hba.conf" > /dev/null
{ echo; echo "host replication all 192.168.0.1/16 trust"; } | gosu postgres tee -a "$PGDATA/pg_hba.conf" > /dev/null
{ echo; echo "host all all 10.211.0.1/16 trust"; } | gosu postgres tee -a "$PGDATA/pg_hba.conf" > /dev/null
{ echo; echo "host replication all 10.211.0.1/16 trust"; } | gosu postgres tee -a "$PGDATA/pg_hba.conf" > /dev/null
{ echo; echo "host all all 10.212.0.0/16 trust"; } | gosu postgres tee -a "$PGDATA/pg_hba.conf" > /dev/null
{ echo; echo "host replication all 10.212.0.0/16 trust"; } | gosu postgres tee -a "$PGDATA/pg_hba.conf" > /dev/null

