.class public final Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;
.super Ljava/lang/Object;
.source "CallCapabilityInfo.java"


# instance fields
.field public boolData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvendor/qti/ims/callcapability/V1_0/KeyValuePairBoolType;",
            ">;"
        }
    .end annotation
.end field

.field public contactNumber:Ljava/lang/String;

.field public stringData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvendor/qti/ims/callcapability/V1_0/KeyValuePairStringType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->contactNumber:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->boolData:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->stringData:Ljava/util/ArrayList;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 65
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 66
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 67
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    .line 66
    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 70
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 72
    new-instance v5, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;

    invoke-direct {v5}, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;-><init>()V

    .line 73
    .local v5, "_hidl_vec_element":Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;
    mul-int/lit8 v6, v4, 0x30

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 74
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v5    # "_hidl_vec_element":Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 128
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 129
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 130
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 131
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 132
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 133
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;

    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 132
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 138
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 139
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 11
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 12
    return v0

    .line 14
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 15
    return v1

    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;

    if-eq v2, v3, :cond_2

    .line 18
    return v1

    .line 20
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;

    .line 21
    .local v2, "other":Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;
    iget-object v3, p0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->contactNumber:Ljava/lang/String;

    iget-object v4, v2, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->contactNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 22
    return v1

    .line 24
    :cond_3
    iget-object v3, p0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->boolData:Ljava/util/ArrayList;

    iget-object v4, v2, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->boolData:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 25
    return v1

    .line 27
    :cond_4
    iget-object v3, p0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->stringData:Ljava/util/ArrayList;

    iget-object v4, v2, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->stringData:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 28
    return v1

    .line 30
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 35
    iget-object v0, p0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->contactNumber:Ljava/lang/String;

    .line 36
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->boolData:Ljava/util/ArrayList;

    .line 37
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->stringData:Ljava/util/ArrayList;

    .line 38
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 35
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 17
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 83
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-wide/16 v11, 0x0

    add-long v1, p3, v11

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->contactNumber:Ljava/lang/String;

    .line 85
    nop

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long v6, p3, v11

    add-long/2addr v6, v11

    const/4 v8, 0x0

    .line 85
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 91
    const-wide/16 v1, 0x10

    add-long v3, p3, v1

    const-wide/16 v13, 0x8

    add-long/2addr v3, v13

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v15

    .line 92
    .local v15, "_hidl_vec_size":I
    mul-int/lit8 v3, v15, 0x8

    int-to-long v3, v3

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    add-long v7, v1, v11

    const/16 v16, 0x1

    .line 92
    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 96
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->boolData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 97
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v15, :cond_0

    .line 98
    new-instance v3, Lvendor/qti/ims/callcapability/V1_0/KeyValuePairBoolType;

    invoke-direct {v3}, Lvendor/qti/ims/callcapability/V1_0/KeyValuePairBoolType;-><init>()V

    .line 99
    .local v3, "_hidl_vec_element":Lvendor/qti/ims/callcapability/V1_0/KeyValuePairBoolType;
    mul-int/lit8 v4, v2, 0x8

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Lvendor/qti/ims/callcapability/V1_0/KeyValuePairBoolType;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 100
    iget-object v4, v0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->boolData:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v3    # "_hidl_vec_element":Lvendor/qti/ims/callcapability/V1_0/KeyValuePairBoolType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v15    # "_hidl_vec_size":I
    :cond_0
    const-wide/16 v1, 0x20

    add-long v3, p3, v1

    add-long/2addr v3, v13

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 105
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v3, v13, 0x18

    int-to-long v3, v3

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    add-long v7, v1, v11

    const/4 v11, 0x1

    .line 105
    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v11

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 109
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->stringData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 110
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_1
    if-ge v2, v13, :cond_1

    .line 111
    new-instance v3, Lvendor/qti/ims/callcapability/V1_0/KeyValuePairStringType;

    invoke-direct {v3}, Lvendor/qti/ims/callcapability/V1_0/KeyValuePairStringType;-><init>()V

    .line 112
    .local v3, "_hidl_vec_element":Lvendor/qti/ims/callcapability/V1_0/KeyValuePairStringType;
    mul-int/lit8 v4, v2, 0x18

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Lvendor/qti/ims/callcapability/V1_0/KeyValuePairStringType;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 113
    iget-object v4, v0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->stringData:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v3    # "_hidl_vec_element":Lvendor/qti/ims/callcapability/V1_0/KeyValuePairStringType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 116
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_1
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 56
    const-wide/16 v0, 0x30

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 57
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 58
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, ".contactNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->contactNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, ", .boolData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->boolData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, ", .stringData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->stringData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 16
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 143
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget-object v6, v0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->contactNumber:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 145
    iget-object v4, v0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->boolData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 146
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x10

    add-long v7, p2, v5

    const-wide/16 v9, 0x8

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 147
    add-long v7, p2, v5

    const-wide/16 v11, 0xc

    add-long/2addr v7, v11

    const/4 v13, 0x0

    invoke-virtual {v1, v7, v8, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 148
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v4, 0x8

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 149
    .local v7, "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_0
    if-ge v8, v4, :cond_0

    .line 150
    iget-object v14, v0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->boolData:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvendor/qti/ims/callcapability/V1_0/KeyValuePairBoolType;

    mul-int/lit8 v15, v8, 0x8

    int-to-long v11, v15

    invoke-virtual {v14, v7, v11, v12}, Lvendor/qti/ims/callcapability/V1_0/KeyValuePairBoolType;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 149
    add-int/lit8 v8, v8, 0x1

    const-wide/16 v11, 0xc

    goto :goto_0

    .line 152
    .end local v8    # "_hidl_index_0":I
    :cond_0
    add-long v5, p2, v5

    add-long/2addr v5, v2

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 155
    .end local v4    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    iget-object v4, v0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->stringData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 156
    .restart local v4    # "_hidl_vec_size":I
    const-wide/16 v5, 0x20

    add-long v7, p2, v5

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 157
    add-long v7, p2, v5

    const-wide/16 v9, 0xc

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 158
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v4, 0x18

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 159
    .restart local v7    # "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .restart local v8    # "_hidl_index_0":I
    :goto_1
    if-ge v8, v4, :cond_1

    .line 160
    iget-object v9, v0, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->stringData:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/qti/ims/callcapability/V1_0/KeyValuePairStringType;

    mul-int/lit8 v10, v8, 0x18

    int-to-long v10, v10

    invoke-virtual {v9, v7, v10, v11}, Lvendor/qti/ims/callcapability/V1_0/KeyValuePairStringType;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 159
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 162
    .end local v8    # "_hidl_index_0":I
    :cond_1
    add-long v5, p2, v5

    add-long/2addr v5, v2

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 164
    .end local v4    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 119
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 120
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/ims/callcapability/V1_0/CallCapabilityInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 122
    return-void
.end method
