if [ $# -eq 0 ]; then
	echo "no param: docker.sh ubuntu/euler name"
	exit;
fi

# $1 ubuntu or euler
# $2 docker name

echo $1
echo $2

if [[ $1 =~ "ubuntu" ]]; then
	echo "ubuntu"
	docker run -it --name $2 --device=/dev/hisi_hpre-0:/dev/hisi_hpre-0:rwm --device=/dev/hisi_hpre-1:/dev/hisi_hpre-1:rwm --device=/dev/hisi_sec2-2:/dev/hisi_sec2-2:rwm --device=/dev/hisi_sec2-3:/dev/hisi_sec2-3:rwm --device=/dev/hisi_zip-4:/dev/hisi_zip-4:rwm --device=/dev/hisi_zip-5:/dev/hisi_zip-5:rwm  --device=/dev/kvm:/dev/kvm:rwm --device=/dev/vfio:/dev/vfio:rwm  --device=/dev/iommu:/dev/iommu:rwm -v /home/linaro/p9root:/mnt ubuntu bash
fi

if [[ $1 =~ "euler" ]]; then
	echo "euler"
	docker run -it --name $2 --device=/dev/hisi_hpre-0:/dev/hisi_hpre-0:rwm --device=/dev/hisi_hpre-1:/dev/hisi_hpre-1:rwm --device=/dev/hisi_sec2-2:/dev/hisi_sec2-2:rwm --device=/dev/hisi_sec2-3:/dev/hisi_sec2-3:rwm --device=/dev/hisi_zip-4:/dev/hisi_zip-4:rwm --device=/dev/hisi_zip-5:/dev/hisi_zip-5:rwm -v /home/linaro/p9root:/mnt openeuler/openeuler:latest bash
fi

if [[ $1 =~ "2203" ]]; then
	echo "euler"
	docker run -it --name $2 --device=/dev/hisi_hpre-0:/dev/hisi_hpre-0:rwm --device=/dev/hisi_hpre-1:/dev/hisi_hpre-1:rwm --device=/dev/hisi_sec2-2:/dev/hisi_sec2-2:rwm --device=/dev/hisi_sec2-3:/dev/hisi_sec2-3:rwm --device=/dev/hisi_zip-4:/dev/hisi_zip-4:rwm --device=/dev/hisi_zip-5:/dev/hisi_zip-5:rwm -v /home/linaro/p9root:/mnt openeuler/openeuler:22.03 bash
fi

if [[ $1 =~ "2403" ]]; then
	echo "euler"
	docker run -it --name $2 --device=/dev/hisi_hpre-0:/dev/hisi_hpre-0:rwm --device=/dev/hisi_hpre-1:/dev/hisi_hpre-1:rwm --device=/dev/hisi_sec2-2:/dev/hisi_sec2-2:rwm --device=/dev/hisi_sec2-3:/dev/hisi_sec2-3:rwm --device=/dev/hisi_zip-4:/dev/hisi_zip-4:rwm --device=/dev/hisi_zip-5:/dev/hisi_zip-5:rwm -v /home/linaro/p9root:/mnt openeuler-24.03-lts:latest bash
fi

if [[ $1 =~ "sw" ]]; then
	echo "euler"
	docker run -it --name $2 -v /home/linaro/p9root:/mnt openeuler/openeuler:latest bash
fi
if [[ $1 =~ "2303" ]]; then
	echo "euler"
	docker run -it --name "2303" -v /home/linaro/p9root:/mnt openeuler/openeuler:23.03 bash
fi
if [[ $1 =~ "2309" ]]; then
	echo "euler"
	docker run -it --name $2 --device=/dev/hisi_hpre-0:/dev/hisi_hpre-0:rwm --device=/dev/hisi_hpre-1:/dev/hisi_hpre-1:rwm --device=/dev/hisi_sec2-2:/dev/hisi_sec2-2:rwm --device=/dev/hisi_sec2-3:/dev/hisi_sec2-3:rwm --device=/dev/hisi_zip-4:/dev/hisi_zip-4:rwm --device=/dev/hisi_zip-5:/dev/hisi_zip-5:rwm -v /home/linaro/p9root:/mnt openeuler/openeuler:23.09 bash
	#docker run -it --name $2 -v /home/linaro/p9root:/mnt openeuler/openeuler:23.09 bash
fi

if [[ $1 =~ "ubtest" ]]; then
	echo "sw_ubuntu"
	docker run -it --name $2 -v /home/linaro/p9root:/mnt ubuntu bash
fi
#docker run -it --name $1 --device=/dev/hisi_hpre-0:/dev/hisi_hpre-0:rwm --device=/dev/hisi_hpre-1:/dev/hisi_hpre-1:rwm --device=/dev/hisi_sec2-2:/dev/hisi_sec2-2:rwm --device=/dev/hisi_sec2-3:/dev/hisi_sec2-3:rwm --device=/dev/hisi_zip-4:/dev/hisi_zip-4:rwm --device=/dev/hisi_zip-5:/dev/hisi_zip-5:rwm -v /home/linaro/p9root:/mnt openeuler/openeuler bash

