.class Lvendor/qti/ims/configaidlservice/RcsStatus$1;
.super Ljava/lang/Object;
.source "RcsStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/ims/configaidlservice/RcsStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/qti/ims/configaidlservice/RcsStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lvendor/qti/ims/configaidlservice/RcsStatus$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/qti/ims/configaidlservice/RcsStatus;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/qti/ims/configaidlservice/RcsStatus;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 13
    new-instance v0, Lvendor/qti/ims/configaidlservice/RcsStatus;

    invoke-direct {v0}, Lvendor/qti/ims/configaidlservice/RcsStatus;-><init>()V

    .line 14
    .local v0, "_aidl_out":Lvendor/qti/ims/configaidlservice/RcsStatus;
    invoke-virtual {v0, p1}, Lvendor/qti/ims/configaidlservice/RcsStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 15
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lvendor/qti/ims/configaidlservice/RcsStatus$1;->newArray(I)[Lvendor/qti/ims/configaidlservice/RcsStatus;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lvendor/qti/ims/configaidlservice/RcsStatus;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 19
    new-array v0, p1, [Lvendor/qti/ims/configaidlservice/RcsStatus;

    return-object v0
.end method
