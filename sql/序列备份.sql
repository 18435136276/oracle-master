select 'create sequence ' || sequence_name ||
       ' minvalue ' || min_value ||
       ' maxvalue ' || max_value ||
       ' start with ' || last_number ||
       ' increment by ' || increment_by ||
       (case when cache_size = 0 then ' nocache' else ' cache ' || cache_size end) || ';'
from dba_sequences
where sequence_owner = 'RY';
