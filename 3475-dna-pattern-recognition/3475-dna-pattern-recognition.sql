# Write your MySQL query statement below
select  sample_id , dna_sequence , species ,
        case when dna_sequence like 'ATG%' THEN 1
        ELSE 0
        END as has_start,

        case when dna_sequence like '%TAA' OR 
        dna_sequence like '%TAG' OR 
        dna_sequence like '%TGA' THEN 1
        ELSE 0 
        end as has_stop ,

        case when dna_sequence LIKE '%ATAT%' THEN 1 
        ELSE 0
        END AS has_atat,

        CASE WHEN dna_sequence LIKE '%GGG%' THEN 1
        ELSE 0
        END AS has_ggg

from Samples
order by sample_id asc