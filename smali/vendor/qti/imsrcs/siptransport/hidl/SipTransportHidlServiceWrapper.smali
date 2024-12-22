.class public Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;
.super Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;
.source "SipTransportHidlServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$SipTransportListener;
    }
.end annotation


# instance fields
.field final LOG_TAG:Ljava/lang/String;

.field private mHalVersion:I

.field public mHidlSipTransportService:Lvendor/qti/ims/rcssip/V1_0/ISipTransportService;

.field public mHidlSipTransportService_1:Lvendor/qti/ims/rcssip/V1_1/ISipTransportService;

.field public mHidlSipTransportService_1_2:Lvendor/qti/ims/rcssip/V1_2/ISipTransportService;

.field mhidlSipTransportListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$SipTransportListener;


# direct methods
.method public constructor <init>(ILvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    .line 41
    invoke-direct {p0, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;-><init>(ILvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService:Lvendor/qti/ims/rcssip/V1_0/ISipTransportService;

    .line 31
    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService_1:Lvendor/qti/ims/rcssip/V1_1/ISipTransportService;

    .line 32
    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService_1_2:Lvendor/qti/ims/rcssip/V1_2/ISipTransportService;

    .line 33
    new-instance v1, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$SipTransportListener;

    invoke-direct {v1, p0, v0}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$SipTransportListener;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$1;)V

    iput-object v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mhidlSipTransportListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$SipTransportListener;

    .line 35
    const-string v0, "SipTransportHidlServiceWrapper"

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->LOG_TAG:Ljava/lang/String;

    .line 37
    const/4 v1, 0x2

    iput v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHalVersion:I

    .line 42
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

    .line 43
    iput p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mSlotId:I

    .line 44
    iput-object p2, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    .line 45
    return-void
.end method


# virtual methods
.method public clearSipTransportService()I
    .locals 3

    .line 306
    const-string v0, ": clearSipTransportService"

    const-string v1, "SipTransportHidlServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService_1_2:Lvendor/qti/ims/rcssip/V1_2/ISipTransportService;

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 309
    :try_start_0
    invoke-interface {v0}, Lvendor/qti/ims/rcssip/V1_2/ISipTransportService;->clearSipTransportService()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 312
    return v2

    .line 314
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService_1:Lvendor/qti/ims/rcssip/V1_1/ISipTransportService;

    if-eqz v0, :cond_1

    .line 316
    :try_start_1
    invoke-interface {v0}, Lvendor/qti/ims/rcssip/V1_1/ISipTransportService;->clearSipTransportService()I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 317
    :catch_1
    move-exception v0

    .line 318
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 319
    return v2

    .line 321
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService:Lvendor/qti/ims/rcssip/V1_0/ISipTransportService;

    if-eqz v0, :cond_2

    .line 323
    :try_start_2
    invoke-interface {v0}, Lvendor/qti/ims/rcssip/V1_0/ISipTransportService;->clearSipTransportService()I

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return v0

    .line 324
    :catch_2
    move-exception v0

    .line 325
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 326
    return v2

    .line 329
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v0, ": clearSipTransportService - HidlSipTransportService object not initialized"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return v2
.end method

.method public closeConnection(ILvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;)I
    .locals 5
    .param p1, "reason"    # I
    .param p2, "mSipDelegateWrapper"    # Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    .line 193
    const-string v0, ": closeConnection"

    const-string v1, "SipTransportHidlServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    .line 195
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService_1_2:Lvendor/qti/ims/rcssip/V1_2/ISipTransportService;

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 197
    nop

    .line 198
    :try_start_0
    invoke-virtual {p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;->getConnectionHandle()J

    move-result-wide v3

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    .line 197
    invoke-interface {v0, v3, v4, p1, v1}, Lvendor/qti/ims/rcssip/V1_2/ISipTransportService;->closeConnection(JII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 203
    return v2

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService_1:Lvendor/qti/ims/rcssip/V1_1/ISipTransportService;

    if-eqz v0, :cond_1

    .line 207
    nop

    .line 208
    :try_start_1
    invoke-virtual {p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;->getConnectionHandle()J

    move-result-wide v3

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    .line 207
    invoke-interface {v0, v3, v4, p1, v1}, Lvendor/qti/ims/rcssip/V1_1/ISipTransportService;->closeConnection(JII)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    goto :goto_0

    .line 211
    :catch_1
    move-exception v0

    .line 212
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 213
    return v2

    .line 215
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService:Lvendor/qti/ims/rcssip/V1_0/ISipTransportService;

    if-eqz v0, :cond_2

    .line 217
    nop

    .line 218
    :try_start_2
    invoke-virtual {p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;->getConnectionHandle()J

    move-result-wide v3

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    .line 217
    invoke-interface {v0, v3, v4, p1, v1}, Lvendor/qti/ims/rcssip/V1_0/ISipTransportService;->closeConnection(JII)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 224
    nop

    .line 229
    :goto_0
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    return v0

    .line 221
    :catch_2
    move-exception v0

    .line 222
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 223
    return v2

    .line 226
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v0, ": closeConnection - HidlSipTransportService object not initialized"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return v2
.end method

.method public createConnection(Ljava/lang/String;Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;)I
    .locals 8
    .param p1, "featureTagsString"    # Ljava/lang/String;
    .param p2, "sipDelegateWrapper"    # Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    .line 98
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": createConnection - userData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipTransportHidlServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    move-object v0, p2

    check-cast v0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;

    .line 101
    .local v0, "mSipDelegateWrapper":Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService_1_2:Lvendor/qti/ims/rcssip/V1_2/ISipTransportService;

    const-string v3, ": Exception- Unable to createConnection_1_1 : "

    const-string v4, ": createConnection_1_1 - Before calling hidl fns:"

    const/4 v5, -0x1

    if-eqz v2, :cond_0

    .line 102
    new-instance v2, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$1;

    invoke-direct {v2, p0, v0}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$1;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;)V

    .line 117
    .local v2, "hidl_createConnection_1_2_cb":Lvendor/qti/ims/rcssip/V1_2/ISipTransportService$createConnection_1_2Callback;
    :try_start_0
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v4, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService_1_2:Lvendor/qti/ims/rcssip/V1_2/ISipTransportService;

    .line 119
    invoke-virtual {v0}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->getHidlSipConnectionListener()Lvendor/qti/ims/rcssip/V1_2/ISipConnectionListener;

    move-result-object v6

    iget v7, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    .line 118
    invoke-interface {v4, v6, p1, v7, v2}, Lvendor/qti/ims/rcssip/V1_2/ISipTransportService;->createConnection_1_2(Lvendor/qti/ims/rcssip/V1_2/ISipConnectionListener;Ljava/lang/String;ILvendor/qti/ims/rcssip/V1_2/ISipTransportService$createConnection_1_2Callback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    nop

    .line 128
    .end local v2    # "hidl_createConnection_1_2_cb":Lvendor/qti/ims/rcssip/V1_2/ISipTransportService$createConnection_1_2Callback;
    goto :goto_0

    .line 123
    .restart local v2    # "hidl_createConnection_1_2_cb":Lvendor/qti/ims/rcssip/V1_2/ISipTransportService$createConnection_1_2Callback;
    :catch_0
    move-exception v4

    .line 124
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 126
    return v5

    .line 129
    .end local v2    # "hidl_createConnection_1_2_cb":Lvendor/qti/ims/rcssip/V1_2/ISipTransportService$createConnection_1_2Callback;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService_1:Lvendor/qti/ims/rcssip/V1_1/ISipTransportService;

    if-eqz v2, :cond_1

    .line 130
    new-instance v2, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$2;

    invoke-direct {v2, p0, v0}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$2;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;)V

    .line 145
    .local v2, "hidl_createConnection_1_1_cb":Lvendor/qti/ims/rcssip/V1_1/ISipTransportService$createConnection_1_1Callback;
    :try_start_1
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v4, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService_1:Lvendor/qti/ims/rcssip/V1_1/ISipTransportService;

    .line 147
    invoke-virtual {v0}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->getHidlSipConnectionListener()Lvendor/qti/ims/rcssip/V1_2/ISipConnectionListener;

    move-result-object v6

    iget v7, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    .line 146
    invoke-interface {v4, v6, p1, v7, v2}, Lvendor/qti/ims/rcssip/V1_1/ISipTransportService;->createConnection_1_1(Lvendor/qti/ims/rcssip/V1_1/ISipConnectionListener;Ljava/lang/String;ILvendor/qti/ims/rcssip/V1_1/ISipTransportService$createConnection_1_1Callback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    nop

    .line 156
    .end local v2    # "hidl_createConnection_1_1_cb":Lvendor/qti/ims/rcssip/V1_1/ISipTransportService$createConnection_1_1Callback;
    goto :goto_0

    .line 151
    .restart local v2    # "hidl_createConnection_1_1_cb":Lvendor/qti/ims/rcssip/V1_1/ISipTransportService$createConnection_1_1Callback;
    :catch_1
    move-exception v4

    .line 152
    .restart local v4    # "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 154
    return v5

    .line 157
    .end local v2    # "hidl_createConnection_1_1_cb":Lvendor/qti/ims/rcssip/V1_1/ISipTransportService$createConnection_1_1Callback;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService:Lvendor/qti/ims/rcssip/V1_0/ISipTransportService;

    if-eqz v2, :cond_2

    .line 158
    new-instance v2, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$3;

    invoke-direct {v2, p0, v0}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$3;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;)V

    .line 173
    .local v2, "hidl_createConnection_cb":Lvendor/qti/ims/rcssip/V1_0/ISipTransportService$createConnectionCallback;
    :try_start_2
    const-string v3, ": createConnection - Before calling hidl fns:"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService:Lvendor/qti/ims/rcssip/V1_0/ISipTransportService;

    .line 175
    invoke-virtual {v0}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->getHidlSipConnectionListener()Lvendor/qti/ims/rcssip/V1_2/ISipConnectionListener;

    move-result-object v4

    iget v6, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    .line 174
    invoke-interface {v3, v4, p1, v6, v2}, Lvendor/qti/ims/rcssip/V1_0/ISipTransportService;->createConnection(Lvendor/qti/ims/rcssip/V1_0/ISipConnectionListener;Ljava/lang/String;ILvendor/qti/ims/rcssip/V1_0/ISipTransportService$createConnectionCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 183
    nop

    .line 184
    .end local v2    # "hidl_createConnection_cb":Lvendor/qti/ims/rcssip/V1_0/ISipTransportService$createConnectionCallback;
    nop

    .line 188
    :goto_0
    iget v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    return v1

    .line 179
    .restart local v2    # "hidl_createConnection_cb":Lvendor/qti/ims/rcssip/V1_0/ISipTransportService$createConnectionCallback;
    :catch_2
    move-exception v3

    .line 180
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ": Exception- Unable to createConnection : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 182
    return v5

    .line 185
    .end local v2    # "hidl_createConnection_cb":Lvendor/qti/ims/rcssip/V1_0/ISipTransportService$createConnectionCallback;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v2, ": createConnection - HidlSipTransportService object not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v5
.end method

.method public getHalVersion()I
    .locals 1

    .line 80
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHalVersion:I

    return v0
.end method

.method public getHidlSipTransportListener()Lvendor/qti/ims/rcssip/V1_0/ISipTransportListener;
    .locals 1

    .line 76
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mhidlSipTransportListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$SipTransportListener;

    return-object v0
.end method

.method public setHalVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .line 72
    iput p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHalVersion:I

    .line 73
    return-void
.end method

.method public setHidlSipTransportService(Lvendor/qti/ims/rcssip/V1_0/ISipTransportService;)V
    .locals 2
    .param p1, "service"    # Lvendor/qti/ims/rcssip/V1_0/ISipTransportService;

    .line 48
    const-string v0, ": setHidlSipTransportService called"

    const-string v1, "SipTransportHidlServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    if-eqz p1, :cond_0

    .line 50
    const-string v0, ": setHidlSipTransportService service obj not null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService:Lvendor/qti/ims/rcssip/V1_0/ISipTransportService;

    .line 53
    return-void
.end method

.method public setHidlSipTransportService(Lvendor/qti/ims/rcssip/V1_1/ISipTransportService;)V
    .locals 2
    .param p1, "service"    # Lvendor/qti/ims/rcssip/V1_1/ISipTransportService;

    .line 56
    const-string v0, ": setHidlSipTransportService clled"

    const-string v1, "SipTransportHidlServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-eqz p1, :cond_0

    .line 58
    const-string v0, ": setHidlSipTransportService service obj not null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService_1:Lvendor/qti/ims/rcssip/V1_1/ISipTransportService;

    .line 61
    return-void
.end method

.method public setHidlSipTransportService(Lvendor/qti/ims/rcssip/V1_2/ISipTransportService;)V
    .locals 2
    .param p1, "service"    # Lvendor/qti/ims/rcssip/V1_2/ISipTransportService;

    .line 64
    const-string v0, ": setHidlSipTransportService clled"

    const-string v1, "SipTransportHidlServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-eqz p1, :cond_0

    .line 66
    const-string v0, ": setHidlSipTransportService service obj not null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService_1_2:Lvendor/qti/ims/rcssip/V1_2/ISipTransportService;

    .line 69
    return-void
.end method

.method public sipTransportDied()V
    .locals 2

    .line 84
    const-string v0, "SipTransportHidlServiceWrapper"

    const-string v1, ": sipTransportDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->handleSipTransportServiceDied()V

    .line 87
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService:Lvendor/qti/ims/rcssip/V1_0/ISipTransportService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 88
    iput-object v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService:Lvendor/qti/ims/rcssip/V1_0/ISipTransportService;

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService_1:Lvendor/qti/ims/rcssip/V1_1/ISipTransportService;

    if-eqz v0, :cond_2

    .line 90
    iput-object v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService_1:Lvendor/qti/ims/rcssip/V1_1/ISipTransportService;

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService_1_2:Lvendor/qti/ims/rcssip/V1_2/ISipTransportService;

    if-eqz v0, :cond_3

    .line 92
    iput-object v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService_1_2:Lvendor/qti/ims/rcssip/V1_2/ISipTransportService;

    .line 93
    :cond_3
    :goto_0
    return-void
.end method

.method public triggerRegRestoration(ILjava/lang/String;)I
    .locals 5
    .param p1, "sipCode"    # I
    .param p2, "sipReason"    # Ljava/lang/String;

    .line 266
    const-string v0, ": triggerRegRestoration"

    const-string v1, "SipTransportHidlServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v0, "regRestorationData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;>;"
    new-instance v2, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;

    invoke-direct {v2}, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;-><init>()V

    .line 271
    .local v2, "regData":Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;
    const/16 v3, 0xbba

    iput v3, v2, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;->key:I

    .line 272
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;->value:Ljava/lang/String;

    .line 273
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService_1_2:Lvendor/qti/ims/rcssip/V1_2/ISipTransportService;

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    .line 276
    :try_start_0
    iget v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    invoke-interface {v3, v0, v1}, Lvendor/qti/ims/rcssip/V1_2/ISipTransportService;->triggerRegRestoration(Ljava/util/ArrayList;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    goto :goto_0

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 280
    return v4

    .line 282
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService_1:Lvendor/qti/ims/rcssip/V1_1/ISipTransportService;

    if-eqz v3, :cond_1

    .line 284
    :try_start_1
    iget v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    invoke-interface {v3, v0, v1}, Lvendor/qti/ims/rcssip/V1_1/ISipTransportService;->triggerRegRestoration(Ljava/util/ArrayList;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    goto :goto_0

    .line 286
    :catch_1
    move-exception v1

    .line 287
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 288
    return v4

    .line 290
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService:Lvendor/qti/ims/rcssip/V1_0/ISipTransportService;

    if-eqz v3, :cond_2

    .line 292
    :try_start_2
    iget v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    invoke-interface {v3, v0, v1}, Lvendor/qti/ims/rcssip/V1_0/ISipTransportService;->triggerRegRestoration(Ljava/util/ArrayList;I)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 297
    nop

    .line 302
    :goto_0
    iget v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    return v1

    .line 294
    :catch_2
    move-exception v1

    .line 295
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 296
    return v4

    .line 299
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v3, ": triggerRegRestoration - HidlSipTransportService object not initialized"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return v4
.end method

.method public triggerRegistration()I
    .locals 3

    .line 233
    const-string v0, ": triggerRegistration"

    const-string v1, "SipTransportHidlServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    .line 235
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService_1_2:Lvendor/qti/ims/rcssip/V1_2/ISipTransportService;

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 237
    :try_start_0
    iget v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    invoke-interface {v0, v1}, Lvendor/qti/ims/rcssip/V1_2/ISipTransportService;->triggerRegistration(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 240
    return v2

    .line 243
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService_1:Lvendor/qti/ims/rcssip/V1_1/ISipTransportService;

    if-eqz v0, :cond_1

    .line 245
    :try_start_1
    iget v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    invoke-interface {v0, v1}, Lvendor/qti/ims/rcssip/V1_1/ISipTransportService;->triggerRegistration(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    goto :goto_0

    .line 246
    :catch_1
    move-exception v0

    .line 247
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 248
    return v2

    .line 251
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mHidlSipTransportService:Lvendor/qti/ims/rcssip/V1_0/ISipTransportService;

    if-eqz v0, :cond_2

    .line 253
    :try_start_2
    iget v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    invoke-interface {v0, v1}, Lvendor/qti/ims/rcssip/V1_0/ISipTransportService;->triggerRegistration(I)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 257
    nop

    .line 262
    :goto_0
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->userData:I

    return v0

    .line 254
    :catch_2
    move-exception v0

    .line 255
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 256
    return v2

    .line 259
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v0, ": triggerReg - HidlSipTransportService object not initialized"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return v2
.end method
