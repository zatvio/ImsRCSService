.class public Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;
.super Ljava/lang/Object;
.source "SipTransportServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;
    }
.end annotation


# static fields
.field protected static INVALID_SLOT_ID:I


# instance fields
.field final LOG_TAG:Ljava/lang/String;

.field public mServiceStatus:I

.field protected mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

.field protected mSlotId:I

.field protected userData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, -0x1

    sput v0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->INVALID_SLOT_ID:I

    return-void
.end method

.method public constructor <init>(ILvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x3e8

    iput v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->userData:I

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->mServiceStatus:I

    .line 20
    const-string v0, "SipTransportServiceWrapper"

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->LOG_TAG:Ljava/lang/String;

    .line 23
    sget v1, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->INVALID_SLOT_ID:I

    iput v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->mSlotId:I

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": ctor for slotId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iput p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->mSlotId:I

    .line 29
    iput-object p2, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    .line 30
    return-void
.end method


# virtual methods
.method public clearSipTransportService()I
    .locals 2

    .line 77
    const-string v0, "SipTransportServiceWrapper"

    const-string v1, ": clearSipTransportService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->userData:I

    return v0
.end method

.method public closeConnection(ILvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;)I
    .locals 2
    .param p1, "reason"    # I
    .param p2, "mSipDelegateWrapper"    # Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    .line 62
    const-string v0, "SipTransportServiceWrapper"

    const-string v1, ": closeConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->userData:I

    return v0
.end method

.method public createConnection(Ljava/lang/String;Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;)I
    .locals 2
    .param p1, "featureTagsString"    # Ljava/lang/String;
    .param p2, "mSipDelegateWrapper"    # Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    .line 56
    const-string v0, "SipTransportServiceWrapper"

    const-string v1, ": createConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->userData:I

    return v0
.end method

.method public getSlotId()I
    .locals 1

    .line 44
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->mSlotId:I

    return v0
.end method

.method public setSipTransportEventListener(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;)V
    .locals 2
    .param p1, "listener"    # Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": setSipTransportEventListener, mServiceStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->mServiceStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipTransportServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    .line 36
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->mServiceStatus:I

    if-nez v0, :cond_0

    .line 38
    const-string v0, ": calling handleServiceStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->mServiceStatus:I

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->handleServiceStatus(I)V

    .line 41
    :cond_0
    return-void
.end method

.method public sipTransportDied()V
    .locals 2

    .line 48
    const-string v0, "SipTransportServiceWrapper"

    const-string v1, ": sipTransportDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->handleSipTransportServiceDied()V

    .line 51
    :cond_0
    return-void
.end method

.method public triggerRegRestoration(ILjava/lang/String;)I
    .locals 2
    .param p1, "sipCode"    # I
    .param p2, "sipReason"    # Ljava/lang/String;

    .line 72
    const-string v0, "SipTransportServiceWrapper"

    const-string v1, ": triggerRegRestoration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->userData:I

    return v0
.end method

.method public triggerRegistration()I
    .locals 2

    .line 67
    const-string v0, "SipTransportServiceWrapper"

    const-string v1, ": triggerRegistration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->userData:I

    return v0
.end method
