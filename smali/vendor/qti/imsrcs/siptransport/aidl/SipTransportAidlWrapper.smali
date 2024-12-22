.class public Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;
.super Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;
.source "SipTransportAidlWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper$SipTransportListener;
    }
.end annotation


# instance fields
.field final LOG_TAG:Ljava/lang/String;

.field mAidlSipTransportListener:Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper$SipTransportListener;

.field public mAidlSipTransportService:Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;


# direct methods
.method public constructor <init>(ILvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    .line 42
    invoke-direct {p0, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;-><init>(ILvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mAidlSipTransportService:Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;

    .line 36
    new-instance v1, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper$SipTransportListener;

    invoke-direct {v1, p0, v0}, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper$SipTransportListener;-><init>(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper$1;)V

    iput-object v1, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mAidlSipTransportListener:Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper$SipTransportListener;

    .line 38
    const-string v0, "SipTransportAidlWrapper"

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->LOG_TAG:Ljava/lang/String;

    .line 43
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

    .line 44
    iput p1, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mSlotId:I

    .line 45
    iput-object p2, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    .line 46
    return-void
.end method

.method static synthetic access$100(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;)Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    .line 33
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    return-object v0
.end method

.method static synthetic access$200(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;)Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    .line 33
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    return-object v0
.end method

.method static synthetic access$300(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;)Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    .line 33
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    return-object v0
.end method

.method static synthetic access$400(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;)Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    .line 33
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    return-object v0
.end method

.method static synthetic access$500(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;)Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    .line 33
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    return-object v0
.end method

.method static synthetic access$600(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;)Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    .line 33
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    return-object v0
.end method


# virtual methods
.method public clearSipTransportService()I
    .locals 2

    .line 156
    const-string v0, "SipTransportAidlWrapper"

    const-string v1, ": clearSipTransportService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mAidlSipTransportService:Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 159
    :try_start_0
    invoke-interface {v0}, Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;->clearSipTransportService()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 162
    return v1

    .line 165
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return v1
.end method

.method public closeConnection(ILvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;)I
    .locals 4
    .param p1, "reason"    # I
    .param p2, "mSipDelegateWrapper"    # Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    .line 104
    const-string v0, "SipTransportAidlWrapper"

    const-string v1, ": closeConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->userData:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->userData:I

    .line 106
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mAidlSipTransportService:Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;

    if-eqz v0, :cond_0

    .line 108
    nop

    .line 109
    :try_start_0
    invoke-virtual {p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;->getConnectionHandle()J

    move-result-wide v1

    iget v3, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->userData:I

    .line 108
    invoke-interface {v0, v1, v2, p1, v3}, Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;->closeConnection(JII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 114
    const/4 v1, -0x1

    return v1

    .line 117
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->userData:I

    return v0
.end method

.method public createConnection(Ljava/lang/String;Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;)I
    .locals 6
    .param p1, "featureTagsString"    # Ljava/lang/String;
    .param p2, "sipDelegateWrapper"    # Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    .line 71
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->userData:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->userData:I

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": createConnection - userData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->userData:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipTransportAidlWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    move-object v0, p2

    check-cast v0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;

    .line 74
    .local v0, "mSipDelegateWrapper":Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mAidlSipTransportService:Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;

    if-eqz v2, :cond_1

    .line 75
    const-string v2, ": create connection aidlsiptransport service object is not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v2, Lvendor/qti/ims/rcssipaidlservice/SipConnectionInfo;

    invoke-direct {v2}, Lvendor/qti/ims/rcssipaidlservice/SipConnectionInfo;-><init>()V

    .line 78
    .local v2, "sipConnectionInfo":Lvendor/qti/ims/rcssipaidlservice/SipConnectionInfo;
    :try_start_0
    const-string v3, ": createConnection - Before calling Aidl fns:"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mAidlSipTransportService:Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;

    .line 80
    invoke-virtual {v0}, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->getAidlSipConnectionListener()Lvendor/qti/ims/rcssipaidlservice/ISipConnectionListener;

    move-result-object v4

    iget v5, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->userData:I

    .line 79
    invoke-interface {v3, v4, p1, v5, v2}, Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;->createConnection(Lvendor/qti/ims/rcssipaidlservice/ISipConnectionListener;Ljava/lang/String;ILvendor/qti/ims/rcssipaidlservice/SipConnectionInfo;)I

    move-result v3

    .line 84
    .local v3, "retStatus":I
    if-nez v3, :cond_0

    .line 85
    const-string v4, ": createConnection - success"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v4, v2, Lvendor/qti/ims/rcssipaidlservice/SipConnectionInfo;->connection:Lvendor/qti/ims/rcssipaidlservice/ISipConnection;

    invoke-virtual {v0, v4}, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->setAidlSipConnection(Lvendor/qti/ims/rcssipaidlservice/ISipConnection;)V

    .line 87
    iget-wide v4, v2, Lvendor/qti/ims/rcssipaidlservice/SipConnectionInfo;->connectionHandle:J

    invoke-virtual {v0, v4, v5}, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->setConnectionHandle(J)V

    goto :goto_0

    .line 89
    :cond_0
    const-string v4, ": createConnection - failure"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v3    # "retStatus":I
    :goto_0
    nop

    .line 96
    .end local v2    # "sipConnectionInfo":Lvendor/qti/ims/rcssipaidlservice/SipConnectionInfo;
    goto :goto_1

    .line 91
    .restart local v2    # "sipConnectionInfo":Lvendor/qti/ims/rcssipaidlservice/SipConnectionInfo;
    :catch_0
    move-exception v3

    .line 92
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": Exception- Unable to createConnection_1_1 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 94
    const/4 v1, -0x1

    return v1

    .line 97
    .end local v2    # "sipConnectionInfo":Lvendor/qti/ims/rcssipaidlservice/SipConnectionInfo;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v2, " createConnection aidl service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_1
    iget v1, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->userData:I

    return v1
.end method

.method public getAidlSipTransportListener()Lvendor/qti/ims/rcssipaidlservice/ISipTransportListener;
    .locals 1

    .line 57
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mAidlSipTransportListener:Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper$SipTransportListener;

    return-object v0
.end method

.method public setAidlSipTransportService(Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;)V
    .locals 2
    .param p1, "service"    # Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;

    .line 49
    const-string v0, ": setAidlSipTransportService called"

    const-string v1, "SipTransportAidlWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    if-eqz p1, :cond_0

    .line 51
    const-string v0, ": setAidlSipTransportService service obj not null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mAidlSipTransportService:Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;

    .line 54
    return-void
.end method

.method public sipTransportDied()V
    .locals 2

    .line 61
    const-string v0, "SipTransportAidlWrapper"

    const-string v1, ": sipTransportDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->handleSipTransportServiceDied()V

    .line 64
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mAidlSipTransportService:Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;

    if-eqz v0, :cond_1

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mAidlSipTransportService:Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;

    .line 66
    :cond_1
    return-void
.end method

.method public triggerRegRestoration(ILjava/lang/String;)I
    .locals 4
    .param p1, "sipCode"    # I
    .param p2, "sipReason"    # Ljava/lang/String;

    .line 135
    const-string v0, "SipTransportAidlWrapper"

    const-string v1, ": triggerRegRestoration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->userData:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->userData:I

    .line 137
    new-instance v0, Lvendor/qti/ims/rcssipaidlservice/RegRestorationData;

    invoke-direct {v0}, Lvendor/qti/ims/rcssipaidlservice/RegRestorationData;-><init>()V

    .line 138
    .local v0, "regRestorationData":Lvendor/qti/ims/rcssipaidlservice/RegRestorationData;
    new-array v1, v1, [Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;

    iput-object v1, v0, Lvendor/qti/ims/rcssipaidlservice/RegRestorationData;->data:[Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;

    .line 139
    new-instance v1, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;

    invoke-direct {v1}, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;-><init>()V

    .line 140
    .local v1, "regData":Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;
    const/16 v2, 0xbba

    iput v2, v1, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;->key:I

    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;->value:Ljava/lang/String;

    .line 142
    iget-object v2, v0, Lvendor/qti/ims/rcssipaidlservice/RegRestorationData;->data:[Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 143
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mAidlSipTransportService:Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;

    if-eqz v2, :cond_0

    .line 145
    :try_start_0
    iget v3, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->userData:I

    invoke-interface {v2, v0, v3}, Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;->triggerRegRestoration(Lvendor/qti/ims/rcssipaidlservice/RegRestorationData;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_0

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 149
    const/4 v3, -0x1

    return v3

    .line 152
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget v2, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->userData:I

    return v2
.end method

.method public triggerRegistration()I
    .locals 2

    .line 121
    const-string v0, "SipTransportAidlWrapper"

    const-string v1, ": triggerRegistration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->userData:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->userData:I

    .line 123
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mAidlSipTransportService:Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;

    if-eqz v0, :cond_0

    .line 125
    :try_start_0
    iget v1, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->userData:I

    invoke-interface {v0, v1}, Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;->triggerRegistration(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 128
    const/4 v1, -0x1

    return v1

    .line 131
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->userData:I

    return v0
.end method
