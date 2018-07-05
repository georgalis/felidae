
AWS tools align flows, with value pricing. Archive for archive, S3 for simple storage share, ESB for elastic, ingest new data to S3 and drop duplicates.

```
  1) Program an Ingest tool
  2) Ingest the RAID to a Snowball
  3) Snowball to S3
  4) S3 to Glacier
  5) Ingest the RAID to S3 network (pickup new data, since step 2)
  6a) Sample S3 to EBS for research.
  6b) Alternate, use RAID as cache for research (vis-a-vis, the existing tools)
  7) Ingest research (RAID or EBS) to S3 (like step 5)
  8) Archive newer S3 data to Glacier
  9) Drop duplicate data (cold S3 or redundant Glacier)
  10) Repeat step 6
```

Glossary:

```
  Ingest : Software tool, to index file data (RAID of EBS) and upload to S3 URL
  URL: Uniform Resource Locator,
     eg http://feildae.amazon.com/12345678/file.csv
     or http://feildae.amazon.com/12345678/file.mpg
  S3 : Simple Cloud Storage Service?
  RAID : USB Storage
  EBS : Amazon Elastic Block Storage
  Snowball : S3 Shipping Storage
  Glacier : Cold storage for data archiving and long-term backup.
     (secure, durable, and extremely low-cost cloud storage)
  Sample : Extract fractional selection of data
```

We keep the hot data hot, warm data warm, cold data cold, and drop the duplicates. 

