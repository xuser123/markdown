1. `lsusb` for **Vendor-ID** and **Product-ID**
2. `touch usb-adapter.xml`
``` xml
<hostdev mode='#' type='usb'>
	<source startupPolicy='#'>
		<vendor id='#'/>
		<product id='#'/>
	</source>
	<address type='usb' bus='#' device='#'/>
</hostdev>
```
3. `virsh attach-device <vmdomain> <usb-adapter.xml> `
