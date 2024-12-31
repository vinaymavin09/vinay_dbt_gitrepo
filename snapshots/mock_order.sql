{% snapshot mock_orders %}
{% set new_schema = target.schema + '_snapshot' %}

{{
    config(
        target_schema = 'snapshots',
        target_database = 'analytics',
        unique_key = 'order_id',

        strategy = 'timestamp',
        updated_at = 'updated_dt',
    )
}}


select * from local_dbt_db.LOCAL_DBT_VINAY_SCHEMA.mock_orders

{% endsnapshot %}
