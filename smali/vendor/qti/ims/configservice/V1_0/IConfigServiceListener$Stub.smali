.class public abstract Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;
.super Landroid/os/HwBinder;
.source "IConfigServiceListener.java"

# interfaces
.implements Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 647
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 650
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

    .line 663
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 700
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 701
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 702
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 703
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 704
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 675
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    filled-new-array {v2, v1}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_0
    .array-data 1
        0x1ft
        0x6et
        -0x68t
        0x11t
        -0x2et
        0x60t
        -0x2ct
        0x11t
        -0x33t
        0x22t
        -0x8t
        -0x44t
        -0x57t
        0x46t
        0x7ct
        -0x4at
        -0x62t
        0x3ft
        -0x20t
        -0x30t
        -0x2dt
        -0x52t
        0x36t
        -0xft
        -0x38t
        -0x56t
        -0x4et
        0x45t
        -0x17t
        -0x64t
        -0x21t
        0x74t
    .end array-data

    :array_1
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.ims.configservice@1.0::IConfigServiceListener"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 669
    const-string v0, "vendor.qti.ims.configservice@1.0::IConfigServiceListener"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 688
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 710
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 712
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

    .line 740
    const/4 v0, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string v2, "vendor.qti.ims.configservice@1.0::IConfigServiceListener"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 935
    :sswitch_0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p0}, Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;->notifySyspropsChanged()V

    .line 938
    goto/16 :goto_1

    .line 924
    :sswitch_1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p0}, Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 927
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 928
    invoke-virtual {v1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 929
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 930
    goto/16 :goto_1

    .line 914
    .end local v1    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0}, Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;->ping()V

    .line 917
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 918
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 919
    goto/16 :goto_1

    .line 909
    :sswitch_3
    goto/16 :goto_1

    .line 901
    :sswitch_4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-virtual {p0}, Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;->setHALInstrumentation()V

    .line 904
    goto/16 :goto_1

    .line 867
    :sswitch_5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p0}, Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 870
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 872
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 874
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 875
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 876
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 877
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 878
    .local v0, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 880
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 881
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 883
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 887
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 888
    nop

    .line 878
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 884
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 891
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 893
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 895
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 896
    goto/16 :goto_1

    .line 856
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p0}, Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 859
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 860
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 862
    goto/16 :goto_1

    .line 844
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 847
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 848
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 849
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 850
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 851
    goto/16 :goto_1

    .line 833
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p0}, Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 836
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 837
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 838
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 839
    goto/16 :goto_1

    .line 823
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    new-instance v0, Lvendor/qti/ims/configservice/V1_0/SettingsData;

    invoke-direct {v0}, Lvendor/qti/ims/configservice/V1_0/SettingsData;-><init>()V

    .line 826
    .local v0, "cbdata":Lvendor/qti/ims/configservice/V1_0/SettingsData;
    invoke-virtual {v0, p2}, Lvendor/qti/ims/configservice/V1_0/SettingsData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 827
    invoke-virtual {p0, v0}, Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;->onGetUpdatedSettings(Lvendor/qti/ims/configservice/V1_0/SettingsData;)V

    .line 828
    goto/16 :goto_1

    .line 813
    .end local v0    # "cbdata":Lvendor/qti/ims/configservice/V1_0/SettingsData;
    :sswitch_a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    new-instance v0, Lvendor/qti/ims/configservice/V1_0/AutoConfigResponse;

    invoke-direct {v0}, Lvendor/qti/ims/configservice/V1_0/AutoConfigResponse;-><init>()V

    .line 816
    .local v0, "acsResponse":Lvendor/qti/ims/configservice/V1_0/AutoConfigResponse;
    invoke-virtual {v0, p2}, Lvendor/qti/ims/configservice/V1_0/AutoConfigResponse;->readFromParcel(Landroid/os/HwParcel;)V

    .line 817
    invoke-virtual {p0, v0}, Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;->onAutoConfigErrorSipResponse(Lvendor/qti/ims/configservice/V1_0/AutoConfigResponse;)V

    .line 818
    goto :goto_1

    .line 804
    .end local v0    # "acsResponse":Lvendor/qti/ims/configservice/V1_0/AutoConfigResponse;
    :sswitch_b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 807
    .local v0, "isRcsEnabled":Z
    invoke-virtual {p0, v0}, Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;->onRcsServiceStatusUpdate(Z)V

    .line 808
    goto :goto_1

    .line 794
    .end local v0    # "isRcsEnabled":Z
    :sswitch_c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 796
    new-instance v0, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;

    invoke-direct {v0}, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;-><init>()V

    .line 797
    .local v0, "capinfo":Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 798
    invoke-virtual {p0, v0}, Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;->onUceStatusUpdate(Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)V

    .line 799
    goto :goto_1

    .line 783
    .end local v0    # "capinfo":Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;
    :sswitch_d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 786
    .local v0, "requestId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 787
    .local v1, "tokenType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 788
    .local v2, "reqReason":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;->onTokenFetchRequest(III)V

    .line 789
    goto :goto_1

    .line 775
    .end local v0    # "requestId":I
    .end local v1    # "tokenType":I
    .end local v2    # "reqReason":I
    :sswitch_e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p0}, Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;->onReconfigNeeded()V

    .line 778
    goto :goto_1

    .line 765
    :sswitch_f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 767
    new-instance v0, Lvendor/qti/ims/configservice/V1_0/AutoConfig;

    invoke-direct {v0}, Lvendor/qti/ims/configservice/V1_0/AutoConfig;-><init>()V

    .line 768
    .local v0, "acsConfig":Lvendor/qti/ims/configservice/V1_0/AutoConfig;
    invoke-virtual {v0, p2}, Lvendor/qti/ims/configservice/V1_0/AutoConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 769
    invoke-virtual {p0, v0}, Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;->onAutoConfigurationReceived(Lvendor/qti/ims/configservice/V1_0/AutoConfig;)V

    .line 770
    goto :goto_1

    .line 753
    .end local v0    # "acsConfig":Lvendor/qti/ims/configservice/V1_0/AutoConfig;
    :sswitch_10
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 756
    .local v0, "status":I
    new-instance v1, Lvendor/qti/ims/configservice/V1_0/SettingsData;

    invoke-direct {v1}, Lvendor/qti/ims/configservice/V1_0/SettingsData;-><init>()V

    .line 757
    .local v1, "cbdata":Lvendor/qti/ims/configservice/V1_0/SettingsData;
    invoke-virtual {v1, p2}, Lvendor/qti/ims/configservice/V1_0/SettingsData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 758
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 759
    .local v2, "userData":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;->onGetSettingsResponse(ILvendor/qti/ims/configservice/V1_0/SettingsData;I)V

    .line 760
    goto :goto_1

    .line 743
    .end local v0    # "status":I
    .end local v1    # "cbdata":Lvendor/qti/ims/configservice/V1_0/SettingsData;
    .end local v2    # "userData":I
    :sswitch_11
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 746
    .restart local v0    # "status":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 747
    .local v1, "userData":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;->onCommandStatus(II)V

    .line 748
    nop

    .line 947
    .end local v0    # "status":I
    .end local v1    # "userData":I
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_10
        0x3 -> :sswitch_f
        0x4 -> :sswitch_e
        0x5 -> :sswitch_d
        0x6 -> :sswitch_c
        0x7 -> :sswitch_b
        0x8 -> :sswitch_a
        0x9 -> :sswitch_9
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

    .line 694
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 722
    const-string v0, "vendor.qti.ims.configservice@1.0::IConfigServiceListener"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    return-object p0

    .line 725
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

    .line 729
    invoke-virtual {p0, p1}, Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;->registerService(Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 684
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 716
    const/4 v0, 0x1

    return v0
.end method
