# README

## tasksテーブル

|Column|Type|Options|

|------|----|-------|

|id         |int        |           |  
|nane       |string     |           |  
|ditail     |text       |           |  
|deadline_at|datetime   |           |  
|priority   |int        |           |  
|status     |int        |           |  
|created_at |datetime   |           |  
|updated_at |datetime   |           |  


## categriesテーブル

|Column|Type|Options|

|------|----|-------|

|id         |int        |           |  
|nane       |string     |           |  
|created_at |datetime   |           |  
|updated_at |datetime   |           |  

## tasks_categriesテーブル

|Column|Type|Options|

|------|----|-------|

|id             |int        |           |  
|tasks_id       |int        |           |  
|categries_id   |int        |           |  
|created_at     |datetime   |           |  
|updated_at     |datetime   |           |  

