---
tags:

---
Permission-Types:  r w x
- **Read** ( r )
- **Write** ( w )
- **Execute** ( x )
#### Binary
|BIN|DEC|Permission|
|:-:|:-----:|:---------|
|000|0|-&nbsp;-&nbsp;-|
|001|1|-&nbsp;-&nbsp;x|
|010|2|-&nbsp;w&nbsp;-|
|011|3|-&nbsp;w&nbsp;x|
|100|4|r&nbsp;-&nbsp;-|
|101|5|r&nbsp;-&nbsp;x|
|110|6|r&nbsp;w&nbsp;-|
|111|7|r&nbsp;w&nbsp;x|
### User-Classifications and Codes
| SUID / SGID | U | G | O |
|:-:|:-:|:-:|:-:|
|Setuid / Setgid |**User**|**Group**|**Others**|
| Owner ID / group owner ID |Owner|Member|else|
#### 200
|U|G|O|
|:---:|:---:|:---:|
|**2**|**0**|**0**|
|- w -|- - -|- - -|
|0 1 0|0 0 0|0 0 0|
**Owner can only modify**
User: write only,
Group: no permission,
Others: no permission
#### 600
|U|G|O|
|:---:|:---:|:---:|
|**6**|**0**|**0**|
|r w -|- - -|- - -|
|1 1 0|0 0 0|0 0 0|
**Private Keys**
User: read and write
Group: no permission
Others: no permission
#### 644
|U|G|O|
|:---:|:---:|:---:|
|**6**|**4**|**4**|
|r w -|r - -|r - -|
|1 1 0|1 0 0|1 0 0|
**Config-Files**
User: read and write,
Group: read only,
Others: read only
#### 645
|U|G|O|
|:---:|:---:|:---:|
|**6**|**4**|**5**|
|r w -|r - -|r - x|
|1 1 0|1 0 0|1 0 1|
**Only Others execute**
User: read and write
Group: read only
Others: read and execute
#### 744
|U|G|O|
|:---:|:---:|:---:|
|**7**|**4**|**4**|
|r w x|r - -|r - -|
|1 1 1|1 0 0|1 0 0|
**All can read**
User: read, write and execute
Group: read only
Others: read only
#### 750
|U|G|O|
|:---:|:---:|:---:|
|**7**|**5**|**0**|
|r w x|r - x|- - -|
|1 1 1|1 0 1|0 0 0|
**Members can read and execute**
User: write and execute
Group: read and execute
Others: denied
#### 751
|U|G|O|
|:---:|:---:|:---:|
|**7** |**5**|**1**|
|r w x |r - x|- - x|
|0 1 1|1 0 1|0 0 1|  
**Others can only execute**
User: write and execute
Group: read and execute
Others: execute only
#### 755
|U|G|O|
|:---:|:---:|:---:|
|**7**|**5**|**5**|
|r w x|r - x|r - x|
|1 1 1|1 0 1|1 0 1|
**All can read and execute**
User: read, write and execute
Group: read and execute
Others: read and execute
#### 760
|U|G|O|
|:---:|:---:|:---:|
|**7** |**6**|**0**|
|r w x |r w -|- - -|
|1 1 1 |1 1 0|0 0 0|
**Members can read and write**
User: read and execute
Group: read and write
Others: no permission
#### 777
|   U   |   G   |   O   |
|:-----:|:-----:|:-----:|
| **7** | **7** | **7** |
| r w x | r w x | r w x |
| 1 1 1 | 1 1 1 | 1 1 1 |
**Free for all**
Owner: read, write and execute
Member: read, write and execute
Others: read, write and execute

#### 2775
|Group-ID|U|G|O|
|:---:|:---:|:---:|:---:|
|**2**|**7**|**7**|**5**|
|- w -|r w x|r w x|r - x|
|0 1 0|1 1 1|1 1 1|1 0 1|
**Shared Directories**
Group-ID: create new files only,
User: full permissions,
Group: full permissions,
Others: read and execute
