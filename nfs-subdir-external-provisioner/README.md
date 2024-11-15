## Controller: NFS Subdirectory External Provisioner

- [General Docs](https://github.com/kubernetes-sigs/nfs-subdir-external-provisioner)
- This is a controller/CRD to provide an NFS backed PersistentVolume StorageClass
- **NOTE** Since this is just wrapping an upstream manifest, I don't deploy from
  this (But I will try and document various things I use)
- This requires something serving an NFS drive, it creates directories in the main
  share and maps those to k8s persistent volumes

Provides a StorageClass+controller for managing PersistentVolumeClaims where the
data lives on an NFS share.  This is a pretty basic storage class, there are many
others and it all depends on your setup.

### NOTES

- See the `storageclass-patch.yaml` for making this the default StorageClass, that
  way all PV/PVC definitions will auto use this
- This requires nfs tools to be on the nodes (i.e. `mount.nfs`)
