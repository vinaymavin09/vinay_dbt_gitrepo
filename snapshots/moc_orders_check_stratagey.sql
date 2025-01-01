{% snapshot MOCK_ORDERS_CHECK %}
{% set new_schema = target.schema + '_snapshot' %}

{{
    config(
        target_schema = 'snapshots',
        target_database = 'analytics',
        unique_key = 'order_id',

        strategy = 'check',
        check_cols = [ 'status','updated_dt']
    )
}}


select * from LOCAL_DBT_DB.LOCAL_DBT_VINAY_SCHEMA.MOCK_ORDERS_CHECK

{% endsnapshot %}
