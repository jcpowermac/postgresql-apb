FROM ansibleplaybookbundle/apb-base
# MAINTAINER {{ $MAINTAINER }}

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"aWQ6IDRkNzYzMTg2LTg1YjAtNDk2OS1iN2Q1LTZkNDgyM2NkMDRkZAojIyMjIyMjIyMjIyMjIyMj\
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj\
IyMjIyMjIwojIFNoYXJlZCBQYXJhbWV0ZXJzCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj\
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCl9wOiAm\
X3AKICAtIG5hbWU6IHBvc3RncmVzcWxfZGF0YWJhc2UKICAgIGRlZmF1bHQ6IGFkbWluCiAgICB0\
eXBlOiBzdHJpbmcKICAgIHRpdGxlOiBQb3N0Z3JlU1FMIERhdGFiYXNlIE5hbWUKICAgIHJlcXVp\
cmVkOiB0cnVlCiAgLSBuYW1lOiBwb3N0Z3Jlc3FsX3Bhc3N3b3JkCiAgICB0eXBlOiBzdHJpbmcK\
ICAgIGRlc2NyaXB0aW9uOiBBIHJhbmRvbSBhbHBoYW51bWVyaWMgc3RyaW5nIGlmIGxlZnQgYmxh\
bmsKICAgIHRpdGxlOiBQb3N0Z3JlU1FMIFBhc3N3b3JkCiAgLSBuYW1lOiBwb3N0Z3Jlc3FsX3Vz\
ZXIKICAgIGRlZmF1bHQ6IGFkbWluCiAgICB0aXRsZTogUG9zdGdyZVNRTCBVc2VyCiAgICB0eXBl\
OiBzdHJpbmcKICAgIG1heGxlbmd0aDogNjMKICAgIHJlcXVpcmVkOiB0cnVlCiAgLSBuYW1lOiBw\
b3N0Z3Jlc3FsX3ZlcnNpb24KICAgIGRlZmF1bHQ6IDkuNQogICAgZW51bTogWyc5LjUnLCAnOS40\
J10KICAgIHR5cGU6IGVudW0KICAgIHRpdGxlOiBQb3N0Z3JlU1FMIFZlcnNpb24KICAgIHJlcXVp\
cmVkOiB0cnVlCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj\
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCm5hbWU6IHJoc2NsLXBvc3RncmVzcWwt\
YXBiCmltYWdlOiBhbnNpYmxlcGxheWJvb2tidW5kbGUvcmhzY2wtcG9zdGdyZXNxbC1hcGIKZGVz\
Y3JpcHRpb246IFNDTCBQb3N0Z3JlU1FMIGFwYiBpbXBsZW1lbnRhdGlvbgpiaW5kYWJsZTogdHJ1\
ZQphc3luYzogb3B0aW9uYWwKbWV0YWRhdGE6CiAgZG9jdW1lbnRhdGlvblVybDogaHR0cHM6Ly93\
d3cucG9zdGdyZXNxbC5vcmcvZG9jcy8KICBsb25nRGVzY3JpcHRpb246IEFuIGFwYiB0aGF0IGRl\
cGxveXMgcG9zdGdyZXNxbCA5LjQgb3IgOS41LgogIGRlcGVuZGVuY2llczogWydyZWdpc3RyeS5h\
Y2Nlc3MucmVkaGF0LmNvbS9yaHNjbC9wb3N0Z3Jlc3FsLTk1LXJoZWw3J10KICBkaXNwbGF5TmFt\
ZTogUG9zdGdyZVNRTCAoQVBCKQogIGNvbnNvbGUub3BlbnNoaWZ0LmlvL2ljb25DbGFzczogaWNv\
bi1wb3N0Z3Jlc3FsCnBsYW5zOgogIC0gbmFtZTogZGV2CiAgICBkZXNjcmlwdGlvbjogQSBzaW5n\
bGUgREIgc2VydmVyIHdpdGggbm8gc3RvcmFnZQogICAgZnJlZTogdHJ1ZQogICAgbWV0YWRhdGE6\
CiAgICAgIGRpc3BsYXlOYW1lOiBEZXZlbG9wbWVudAogICAgICBsb25nRGVzY3JpcHRpb246IFRo\
aXMgcGxhbiBwcm92aWRlcyBhIHNpbmdsZSBub24tSEEgUG9zdGdyZVNRTCBzZXJ2ZXIgd2l0aG91\
dCBwZXJzaXN0ZW50IHN0b3JhZ2UKICAgICAgY29zdDogJDAuMDAKICAgIHBhcmFtZXRlcnM6ICpf\
cAogIC0gbmFtZTogcHJvZAogICAgZGVzY3JpcHRpb246IEhBIERCIFNlcnZlciB3aXRoIDFUQiBv\
ZiBTdG9yYWdlCiAgICBmcmVlOiBmYWxzZQogICAgbWV0YWRhdGE6CiAgICAgIGRpc3BheU5hbWU6\
IFByb2R1Y3Rpb24KICAgICAgbG9uZ0Rlc2NyaXB0aW9uOiBUaGlzIHBsYW4gcHJvdmlkZXMgYSBz\
aW5nbGUgbm9uLUhBIFBvc3RncmVTUUwgc2VydmVyIHdpdGggcGVyc2lzdGVudCBzdG9yYWdlCiAg\
ICAgIGNvc3Q6ICQ1Ljk5IG1vbnRobHkKICAgIHBhcmFtZXRlcnM6ICpfcAo="

RUN yum -y install postgresql-apb-role && yum clean all

USER apb
