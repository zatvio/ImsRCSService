.class public Lvendor/qti/ims/callcapabilityaidlservice/CallCapabilityInfo;
.super Ljava/lang/Object;
.source "CallCapabilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/qti/ims/callcapabilityaidlservice/CallCapabilityInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public boolData:[Lvendor/qti/ims/callcapabilityaidlservice/KeyValuePairBoolType;

.field public contactNumber:Ljava/lang/String;

.field public stringData:[Lvendor/qti/ims/callcapabilityaidlservice/KeyValuePairStringType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lvendor/qti/ims/callcapabilityaidlservice/CallCapabilityInfo$1;

    invoke-direct {v0}, Lvendor/qti/ims/callcapabilityaidlservice/CallCapabilityInfo$1;-><init>()V

    sput-object v0, Lvendor/qti/ims/callcapabilityaidlservice/CallCapabilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 6
    .param p1, "_v"    # Ljava/lang/Object;

    .line 63
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 64
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 67
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Lvendor/qti/ims/callcapabilityaidlservice/CallCapabilityInfo;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 66
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    return v1

    .line 71
    .end local v1    # "_mask":I
    :cond_2
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    .line 72
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 74
    :cond_3
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "_mask":I
    iget-object v1, p0, Lvendor/qti/ims/callcapabilityaidlservice/CallCapabilityInfo;->boolData:[Lvendor/qti/ims/callcapabilityaidlservice/KeyValuePairBoolType;

    invoke-direct {p0, v1}, Lvendor/qti/ims/callcapabilityaidlservice/CallCapabilityInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lvendor/qti/ims/callcapabilityaidlservice/CallCapabilityInfo;->stringData:[Lvendor/qti/ims/callcapabilityaidlservice/KeyValuePairStringType;

    invoke-direct {p0, v1}, Lvendor/qti/ims/callcapabilityaidlservice/CallCapabilityInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 11
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 39
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 41
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_7

    .line 42
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 49
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 52
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    return-void

    .line 50
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/ims/callcapabilityaidlservice/CallCapabilityInfo;->contactNumber:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 49
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 52
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    return-void

    .line 50
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    :cond_3
    :try_start_2
    sget-object v2, Lvendor/qti/ims/callcapabilityaidlservice/KeyValuePairBoolType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/qti/ims/callcapabilityaidlservice/KeyValuePairBoolType;

    iput-object v2, p0, Lvendor/qti/ims/callcapabilityaidlservice/CallCapabilityInfo;->boolData:[Lvendor/qti/ims/callcapabilityaidlservice/KeyValuePairBoolType;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 49
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 52
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    return-void

    .line 50
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_5
    :try_start_3
    sget-object v2, Lvendor/qti/ims/callcapabilityaidlservice/KeyValuePairStringType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/qti/ims/callcapabilityaidlservice/KeyValuePairStringType;

    iput-object v2, p0, Lvendor/qti/ims/callcapabilityaidlservice/CallCapabilityInfo;->stringData:[Lvendor/qti/ims/callcapabilityaidlservice/KeyValuePairStringType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 52
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    nop

    .line 54
    return-void

    .line 50
    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 41
    :cond_7
    :try_start_4
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Lvendor/qti/ims/callcapabilityaidlservice/CallCapabilityInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 49
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Lvendor/qti/ims/callcapabilityaidlservice/CallCapabilityInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_8

    .line 50
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_8
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 27
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object v1, p0, Lvendor/qti/ims/callcapabilityaidlservice/CallCapabilityInfo;->contactNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lvendor/qti/ims/callcapabilityaidlservice/CallCapabilityInfo;->boolData:[Lvendor/qti/ims/callcapabilityaidlservice/KeyValuePairBoolType;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 30
    iget-object v1, p0, Lvendor/qti/ims/callcapabilityaidlservice/CallCapabilityInfo;->stringData:[Lvendor/qti/ims/callcapabilityaidlservice/KeyValuePairStringType;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 32
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 33
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 35
    return-void
.end method
