.class public abstract Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;
.super Landroid/os/HwBinder;
.source "IConfigService.java"

# interfaces
.implements Lvendor/qti/ims/configservice/V1_1/IConfigService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/ims/configservice/V1_1/IConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 671
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 674
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 688
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 726
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 727
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 728
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 729
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 730
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 700
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    new-array v3, v1, [B

    fill-array-data v3, :array_1

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    filled-new-array {v2, v3, v1}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x53t
        0x59t
        -0x7dt
        0x26t
        -0x1t
        0x2t
        0x3t
        0x39t
        0x68t
        -0x66t
        0x11t
        -0x10t
        0x53t
        -0x21t
        -0x17t
        -0x41t
        -0x51t
        0x4at
        0x23t
        0x2et
        -0x6at
        0x60t
        -0x64t
        -0x69t
        0xdt
        0x54t
        -0x61t
        0x25t
        -0x64t
        -0x37t
        0x77t
        0x73t
    .end array-data

    :array_1
    .array-data 1
        -0x1bt
        0x5bt
        -0x5ct
        0x5et
        -0x1ft
        -0x7ft
        -0x77t
        0x7bt
        -0xct
        -0x44t
        -0x15t
        -0x17t
        0x53t
        -0x47t
        0x2bt
        0x3bt
        -0x72t
        -0x58t
        0x5at
        0x15t
        -0x3ct
        0x63t
        0x1dt
        0x4et
        0x5dt
        0x52t
        -0x19t
        -0x4ft
        -0x5et
        0x23t
        -0x32t
        -0x6ft
    .end array-data

    :array_2
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 679
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.ims.configservice@1.0::IConfigService"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "vendor.qti.ims.configservice@1.1::IConfigService"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 694
    const-string v0, "vendor.qti.ims.configservice@1.1::IConfigService"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 714
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 736
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 738
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 10
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 766
    const-string v0, "android.hidl.base@1.0::IBase"

    const-string v1, "vendor.qti.ims.configservice@1.0::IConfigService"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1033
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p0}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->notifySyspropsChanged()V

    .line 1036
    goto/16 :goto_1

    .line 1022
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p0}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1025
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1026
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1027
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1028
    goto/16 :goto_1

    .line 1012
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p0}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->ping()V

    .line 1015
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1016
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1017
    goto/16 :goto_1

    .line 1007
    :sswitch_3
    goto/16 :goto_1

    .line 999
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p0}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->setHALInstrumentation()V

    .line 1002
    goto/16 :goto_1

    .line 965
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p0}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 968
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 970
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 972
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 973
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 974
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 975
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 976
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 978
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 979
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 981
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 985
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 986
    nop

    .line 976
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 982
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 989
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 991
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 993
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 994
    goto/16 :goto_1

    .line 954
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 958
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 959
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 960
    goto/16 :goto_1

    .line 942
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 945
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 946
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 947
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 948
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 949
    goto/16 :goto_1

    .line 931
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p0}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 934
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 935
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 936
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 937
    goto/16 :goto_1

    .line 917
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    const-string v0, "vendor.qti.ims.configservice@1.1::IConfigService"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    new-instance v0, Lvendor/qti/ims/configservice/V1_1/SettingsData;

    invoke-direct {v0}, Lvendor/qti/ims/configservice/V1_1/SettingsData;-><init>()V

    .line 920
    .local v0, "settingsData":Lvendor/qti/ims/configservice/V1_1/SettingsData;
    invoke-virtual {v0, p2}, Lvendor/qti/ims/configservice/V1_1/SettingsData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 921
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 922
    .local v1, "userData":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->setSettingsValue_1_1(Lvendor/qti/ims/configservice/V1_1/SettingsData;I)I

    move-result v3

    .line 923
    .local v3, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 924
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 925
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 926
    goto/16 :goto_1

    .line 904
    .end local v0    # "settingsData":Lvendor/qti/ims/configservice/V1_1/SettingsData;
    .end local v1    # "userData":I
    .end local v3    # "_hidl_out_status":I
    :sswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 907
    .local v0, "autoConfigReasonType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 908
    .restart local v1    # "userData":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->triggerAcsRequest(II)I

    move-result v3

    .line 909
    .restart local v3    # "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 910
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 911
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 912
    goto/16 :goto_1

    .line 892
    .end local v0    # "autoConfigReasonType":I
    .end local v1    # "userData":I
    .end local v3    # "_hidl_out_status":I
    :sswitch_b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 895
    .local v0, "userData":I
    invoke-virtual {p0, v0}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->getAcsConfiguration(I)I

    move-result v1

    .line 896
    .local v1, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 897
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 898
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 899
    goto/16 :goto_1

    .line 877
    .end local v0    # "userData":I
    .end local v1    # "_hidl_out_status":I
    :sswitch_c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 880
    .local v0, "requestId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 881
    .local v1, "tokenType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 882
    .local v3, "status":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 883
    .local v4, "userData":I
    invoke-virtual {p0, v0, v1, v3, v4}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->updateTokenFetchStatus(IIII)I

    move-result v5

    .line 884
    .local v5, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 885
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 886
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 887
    goto/16 :goto_1

    .line 864
    .end local v0    # "requestId":I
    .end local v1    # "tokenType":I
    .end local v3    # "status":I
    .end local v4    # "userData":I
    .end local v5    # "_hidl_out_status":I
    :sswitch_d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "token":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 868
    .local v1, "userData":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->setAppToken(Ljava/lang/String;I)I

    move-result v3

    .line 869
    .local v3, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 870
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 871
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 872
    goto/16 :goto_1

    .line 849
    .end local v0    # "token":Ljava/lang/String;
    .end local v1    # "userData":I
    .end local v3    # "_hidl_out_status":I
    :sswitch_e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    new-instance v0, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub$2;

    invoke-direct {v0, p0, p3}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub$2;-><init>(Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->getRcsServiceStatus(Lvendor/qti/ims/configservice/V1_0/IConfigService$getRcsServiceStatusCallback;)V

    .line 859
    goto/16 :goto_1

    .line 834
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    new-instance v0, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub$1;

    invoke-direct {v0, p0, p3}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub$1;-><init>(Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->getUceStatus(Lvendor/qti/ims/configservice/V1_0/IConfigService$getUceStatusCallback;)V

    .line 844
    goto/16 :goto_1

    .line 822
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 825
    .local v0, "userData":I
    invoke-virtual {p0, v0}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->deregisterForSettingsChange(I)I

    move-result v1

    .line 826
    .local v1, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 827
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 828
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 829
    goto :goto_1

    .line 810
    .end local v0    # "userData":I
    .end local v1    # "_hidl_out_status":I
    :sswitch_11
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 813
    .restart local v0    # "userData":I
    invoke-virtual {p0, v0}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->registerForSettingsChange(I)I

    move-result v1

    .line 814
    .restart local v1    # "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 815
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 816
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 817
    goto :goto_1

    .line 797
    .end local v0    # "userData":I
    .end local v1    # "_hidl_out_status":I
    :sswitch_12
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 800
    .local v0, "settingsId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 801
    .local v1, "userData":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->getSettingsValue(II)I

    move-result v3

    .line 802
    .restart local v3    # "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 803
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 804
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 805
    goto :goto_1

    .line 783
    .end local v0    # "settingsId":I
    .end local v1    # "userData":I
    .end local v3    # "_hidl_out_status":I
    :sswitch_13
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    new-instance v0, Lvendor/qti/ims/configservice/V1_0/SettingsData;

    invoke-direct {v0}, Lvendor/qti/ims/configservice/V1_0/SettingsData;-><init>()V

    .line 786
    .local v0, "settingsData":Lvendor/qti/ims/configservice/V1_0/SettingsData;
    invoke-virtual {v0, p2}, Lvendor/qti/ims/configservice/V1_0/SettingsData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 787
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 788
    .restart local v1    # "userData":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->setSettingsValue(Lvendor/qti/ims/configservice/V1_0/SettingsData;I)I

    move-result v3

    .line 789
    .restart local v3    # "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 790
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 791
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 792
    goto :goto_1

    .line 769
    .end local v0    # "settingsData":Lvendor/qti/ims/configservice/V1_0/SettingsData;
    .end local v1    # "userData":I
    .end local v3    # "_hidl_out_status":I
    :sswitch_14
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    new-instance v0, Lvendor/qti/ims/configservice/V1_0/ConfigData;

    invoke-direct {v0}, Lvendor/qti/ims/configservice/V1_0/ConfigData;-><init>()V

    .line 772
    .local v0, "configData":Lvendor/qti/ims/configservice/V1_0/ConfigData;
    invoke-virtual {v0, p2}, Lvendor/qti/ims/configservice/V1_0/ConfigData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 773
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 774
    .restart local v1    # "userData":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->setConfig(Lvendor/qti/ims/configservice/V1_0/ConfigData;I)I

    move-result v3

    .line 775
    .restart local v3    # "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 776
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 777
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 778
    nop

    .line 1045
    .end local v0    # "configData":Lvendor/qti/ims/configservice/V1_0/ConfigData;
    .end local v1    # "userData":I
    .end local v3    # "_hidl_out_status":I
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_13
        0x3 -> :sswitch_12
        0x4 -> :sswitch_11
        0x5 -> :sswitch_10
        0x6 -> :sswitch_f
        0x7 -> :sswitch_e
        0x8 -> :sswitch_d
        0x9 -> :sswitch_c
        0xa -> :sswitch_b
        0xb -> :sswitch_a
        0xc -> :sswitch_9
        0xf43484e -> :sswitch_8
        0xf444247 -> :sswitch_7
        0xf445343 -> :sswitch_6
        0xf485348 -> :sswitch_5
        0xf494e54 -> :sswitch_4
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 720
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 748
    const-string v0, "vendor.qti.ims.configservice@1.1::IConfigService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    return-object p0

    .line 751
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 755
    invoke-virtual {p0, p1}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->registerService(Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 710
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 742
    const/4 v0, 0x1

    return v0
.end method
