.class public Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;
.super Ljava/lang/Object;
.source "ImsRcsAidlServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr$FactoryDeathRecipient;
    }
.end annotation


# static fields
.field private static final ImsAidlFactoryString:Ljava/lang/String; = "vendor.qti.ims.factoryaidlservice.IImsFactory/default"

.field public static mImsAidlFactoryInitialized:Z

.field static mImsFactoryInstance:Lvendor/qti/ims/factoryaidlservice/IImsFactory;

.field private static mMgr:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;


# instance fields
.field final LOG_TAG:Ljava/lang/String;

.field MAX_RETRY_COUNT:I

.field REINTIALIZE_FLAG:I

.field mConfigService:[Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

.field mIsSipTransportInited:[Z

.field mOptionsService:[Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

.field mPresenceService:[Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

.field mPresenceSvcReinitFlag:[I

.field mPresenceSvcRetryCount:[I

.field mRcsCapExchanges:[Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

.field mSipTransportService:[Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

.field mSipTransportSvcRetryCount:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factoryaidlservice/IImsFactory;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "ImsRcsAidlServiceMgr"

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->LOG_TAG:Ljava/lang/String;

    .line 50
    const/16 v0, 0xa

    iput v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->MAX_RETRY_COUNT:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->REINTIALIZE_FLAG:I

    .line 59
    sget v0, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    new-array v0, v0, [Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mSipTransportService:[Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    .line 60
    sget v0, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    new-array v0, v0, [Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    .line 61
    sget v0, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    new-array v0, v0, [Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    .line 62
    sget v0, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mSipTransportSvcRetryCount:[I

    .line 63
    sget v0, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mPresenceSvcReinitFlag:[I

    .line 64
    sget v0, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mPresenceSvcRetryCount:[I

    .line 65
    sget v0, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mIsSipTransportInited:[Z

    .line 66
    sget v0, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    new-array v0, v0, [Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mRcsCapExchanges:[Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    .line 67
    return-void
.end method

.method static synthetic access$100(Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    .line 40
    invoke-direct {p0}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .locals 9

    .line 155
    const-string v0, "Native serviceDied cleanup"

    const-string v1, "ImsRcsAidlServiceMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x0

    sput-object v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factoryaidlservice/IImsFactory;

    .line 157
    const/4 v0, 0x0

    sput-boolean v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    .line 158
    iput v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->REINTIALIZE_FLAG:I

    .line 159
    iget-object v2, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 161
    .local v5, "icsWrapper":Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;
    :try_start_0
    invoke-virtual {v5}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->clear()V

    .line 163
    const-string v6, " ImsConfigAidlServiceWrapper cleanup"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_1

    .line 165
    :catch_0
    move-exception v6

    .line 166
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ImsConfigAidlServiceWrapper cleanup "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v5    # "icsWrapper":Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    :cond_0
    iget-object v2, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    array-length v3, v2

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 171
    .local v5, "p":Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;
    if-nez v5, :cond_1

    .line 173
    goto :goto_3

    .line 176
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->presenceDied()V

    .line 177
    const-string v6, " presenceDied"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    goto :goto_3

    .line 179
    :catch_1
    move-exception v6

    .line 180
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v7, "presenceDied caught Excpetion:"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    .end local v5    # "p":Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 187
    :cond_2
    iget-object v2, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    array-length v3, v2

    move v4, v0

    :goto_4
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 188
    .local v5, "o":Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;
    if-nez v5, :cond_3

    .line 190
    goto :goto_5

    .line 193
    :cond_3
    :try_start_2
    invoke-virtual {v5}, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->optionsDied()V

    .line 194
    const-string v6, " optionsDied"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 199
    goto :goto_5

    .line 196
    :catch_2
    move-exception v6

    .line 197
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v7, "optionsDied caught Exception:"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    .end local v5    # "o":Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 204
    :cond_4
    iget-object v2, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mSipTransportService:[Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    array-length v3, v2

    move v4, v0

    :goto_6
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    .line 205
    .local v5, "p":Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;
    if-nez v5, :cond_5

    .line 207
    const-string v6, " SipTransportService obj is null"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    goto :goto_7

    .line 211
    :cond_5
    :try_start_3
    invoke-virtual {v5}, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->sipTransportDied()V

    .line 212
    const-string v6, " sipTransportDied"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 216
    goto :goto_7

    .line 214
    :catch_3
    move-exception v6

    .line 215
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sipTransportDied "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v5    # "p":Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 218
    :cond_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    sget v3, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    if-ge v2, v3, :cond_7

    .line 219
    const-string v3, " clearing reinit count"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v3, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mIsSipTransportInited:[Z

    aput-boolean v0, v3, v2

    .line 221
    iget-object v3, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mSipTransportSvcRetryCount:[I

    aput v0, v3, v2

    .line 222
    iget-object v3, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mPresenceSvcRetryCount:[I

    aput v0, v3, v2

    .line 223
    iget-object v3, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mPresenceSvcReinitFlag:[I

    aput v0, v3, v2

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 226
    .end local v2    # "i":I
    :cond_7
    invoke-virtual {p0}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->reInitHalServices()V

    .line 227
    return-void
.end method

.method private getAidlPresenceService(I)V
    .locals 7
    .param p1, "slotId"    # I

    .line 491
    const-string v0, "getAidlPresenceService enter"

    const-string v1, "ImsRcsAidlServiceMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    new-instance v0, Lvendor/qti/ims/factoryaidlservice/ResultStatus;

    invoke-direct {v0}, Lvendor/qti/ims/factoryaidlservice/ResultStatus;-><init>()V

    .line 493
    .local v0, "resStatus":Lvendor/qti/ims/factoryaidlservice/ResultStatus;
    const/4 v2, 0x1

    iput v2, v0, Lvendor/qti/ims/factoryaidlservice/ResultStatus;->status:I

    .line 494
    const/4 v3, 0x0

    .line 496
    .local v3, "iPresenceService":Lvendor/qti/ims/rcsuceaidlservice/IPresenceService;
    :try_start_0
    sget-object v4, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factoryaidlservice/IImsFactory;

    if-eqz v4, :cond_1

    .line 497
    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    aget-object v6, v6, p1

    .line 498
    invoke-virtual {v6}, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->getAidlPresenceListener()Lvendor/qti/ims/rcsuceaidlservice/IPresenceListener;

    move-result-object v6

    .line 497
    invoke-interface {v4, v5, v6, v0}, Lvendor/qti/ims/factoryaidlservice/IImsFactory;->createPresenceService(ILvendor/qti/ims/rcsuceaidlservice/IPresenceListener;Lvendor/qti/ims/factoryaidlservice/ResultStatus;)Lvendor/qti/ims/rcsuceaidlservice/IPresenceService;

    move-result-object v4

    move-object v3, v4

    .line 500
    iget v4, v0, Lvendor/qti/ims/factoryaidlservice/ResultStatus;->status:I

    if-nez v4, :cond_0

    .line 501
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->setPresenceSvcRetryCount(II)V

    .line 502
    invoke-direct {p0, p1, v2}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->setPresenceSvcReintFlag(II)V

    .line 503
    iget-object v2, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    aget-object v2, v2, p1

    invoke-virtual {v2, v3}, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->setAidlPresenceService(Lvendor/qti/ims/rcsuceaidlservice/IPresenceService;)V

    goto :goto_0

    .line 505
    :cond_0
    iget v4, v0, Lvendor/qti/ims/factoryaidlservice/ResultStatus;->status:I

    if-ne v4, v2, :cond_2

    .line 506
    const-string v2, " IPresenceService status: FAIL "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->initializeImsPresenceRetry(I)V

    goto :goto_0

    .line 510
    :cond_1
    const-string v2, "no factory initialized for createPresenceService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :cond_2
    :goto_0
    goto :goto_1

    .line 512
    :catch_0
    move-exception v2

    .line 513
    .local v2, "ex":Ljava/lang/Exception;
    const-string v4, "Unable to get to IPresenceService instance"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private getAidlRcsSipTransport(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;)V
    .locals 7
    .param p1, "p"    # Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    .line 463
    const-string v0, "ImsRcsAidlServiceMgr"

    const/4 v1, 0x0

    .line 464
    .local v1, "iSipTransportService":Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;
    new-instance v2, Lvendor/qti/ims/factoryaidlservice/ResultStatus;

    invoke-direct {v2}, Lvendor/qti/ims/factoryaidlservice/ResultStatus;-><init>()V

    .line 465
    .local v2, "resStatus":Lvendor/qti/ims/factoryaidlservice/ResultStatus;
    const/4 v3, 0x1

    iput v3, v2, Lvendor/qti/ims/factoryaidlservice/ResultStatus;->status:I

    .line 467
    :try_start_0
    sget-object v4, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factoryaidlservice/IImsFactory;

    if-eqz v4, :cond_0

    .line 468
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->getSlotId()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->getAidlSipTransportListener()Lvendor/qti/ims/rcssipaidlservice/ISipTransportListener;

    move-result-object v6

    invoke-interface {v4, v5, v6, v2}, Lvendor/qti/ims/factoryaidlservice/IImsFactory;->createRcsSipTransportService(ILvendor/qti/ims/rcssipaidlservice/ISipTransportListener;Lvendor/qti/ims/factoryaidlservice/ResultStatus;)Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;

    move-result-object v4

    move-object v1, v4

    .line 469
    const-string v4, "ImsRcsAidlServiceMgrISipTransportService status: "

    iget v5, v2, Lvendor/qti/ims/factoryaidlservice/ResultStatus;->status:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    iget v4, v2, Lvendor/qti/ims/factoryaidlservice/ResultStatus;->status:I

    if-nez v4, :cond_1

    .line 473
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->getSlotId()I

    move-result v4

    invoke-direct {p0, v4, v3}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->setSipTransportInited(IZ)V

    .line 474
    invoke-virtual {p1, v1}, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->setAidlSipTransportService(Lvendor/qti/ims/rcssipaidlservice/ISipTransportService;)V

    goto :goto_0

    .line 476
    :cond_1
    iget v4, v2, Lvendor/qti/ims/factoryaidlservice/ResultStatus;->status:I

    if-ne v4, v3, :cond_2

    .line 477
    const-string v3, " ISipTransportService status: FAIL "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 479
    :cond_2
    iget v3, v2, Lvendor/qti/ims/factoryaidlservice/ResultStatus;->status:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 480
    const-string v3, "createRcsSipTransportService unsupported"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 483
    :cond_3
    const-string v3, "ISipTransportService null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_0
    goto :goto_1

    .line 485
    :catch_0
    move-exception v3

    .line 486
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Unable to get to ISipTransportService::V1_2 instance"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;
    .locals 2

    const-class v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mMgr:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    invoke-direct {v1}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;-><init>()V

    sput-object v1, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mMgr:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    .line 73
    :cond_0
    sget-object v1, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mMgr:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getIsSipTransportInited(I)Z
    .locals 1
    .param p1, "slotId"    # I

    monitor-enter p0

    .line 438
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mIsSipTransportInited:[Z

    aget-boolean v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 438
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;
    .end local p1    # "slotId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getPresenceSvcReintFlag(I)I
    .locals 1
    .param p1, "slotId"    # I

    monitor-enter p0

    .line 446
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mPresenceSvcReinitFlag:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 446
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;
    .end local p1    # "slotId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getPresenceSvcRetryCount(I)I
    .locals 1
    .param p1, "slotId"    # I

    monitor-enter p0

    .line 454
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mPresenceSvcRetryCount:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 454
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;
    .end local p1    # "slotId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getSipTransportSvcRetryCount(I)I
    .locals 1
    .param p1, "slotId"    # I

    monitor-enter p0

    .line 430
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mSipTransportSvcRetryCount:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 430
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;
    .end local p1    # "slotId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private initializeImsPresenceRetry(I)V
    .locals 3
    .param p1, "slotId"    # I

    .line 325
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getPresenceSvcRetryCount(I)I

    move-result v0

    .line 326
    .local v0, "retryValue":I
    iget v1, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->MAX_RETRY_COUNT:I

    if-ge v0, v1, :cond_0

    .line 327
    add-int/lit8 v0, v0, 0x1

    .line 328
    invoke-direct {p0, p1, v0}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->setPresenceSvcRetryCount(II)V

    .line 329
    const-string v1, "ImsRcsAidlServiceMgr V1.1 IPresenceService retry Attempt: "

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    goto :goto_0

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 336
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->initializeImsPresenceService(I)V

    goto :goto_1

    .line 338
    :cond_0
    const-string v1, "ImsRcsAidlServiceMgr"

    const-string v2, "createPresenceService failed: V1.1 IPresenceService MAX_RETRY_COUNT reached"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_1
    return-void
.end method

.method private declared-synchronized setPresenceSvcReintFlag(II)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "value"    # I

    monitor-enter p0

    .line 450
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mPresenceSvcReinitFlag:[I

    aput p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    monitor-exit p0

    return-void

    .line 449
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;
    .end local p1    # "slotId":I
    .end local p2    # "value":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setPresenceSvcRetryCount(II)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "value"    # I

    monitor-enter p0

    .line 458
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mPresenceSvcRetryCount:[I

    aput p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    monitor-exit p0

    return-void

    .line 457
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;
    .end local p1    # "slotId":I
    .end local p2    # "value":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setSipTransportInited(IZ)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "value"    # Z

    monitor-enter p0

    .line 442
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mIsSipTransportInited:[Z

    aput-boolean p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    monitor-exit p0

    return-void

    .line 441
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;
    .end local p1    # "slotId":I
    .end local p2    # "value":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setSipTransportSvcRetryCount(II)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "value"    # I

    monitor-enter p0

    .line 434
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mSipTransportSvcRetryCount:[I

    aput p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    monitor-exit p0

    return-void

    .line 433
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;
    .end local p1    # "slotId":I
    .end local p2    # "value":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public destroyOptionsService(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 380
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->close()V

    .line 381
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 382
    return-void
.end method

.method public destroyPresenceSevice(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 374
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->close()V

    .line 375
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 376
    return-void
.end method

.method public dispose()V
    .locals 0

    .line 78
    return-void
.end method

.method public getConfigService(I)Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;
    .locals 6
    .param p1, "slotId"    # I

    .line 125
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factoryaidlservice/IImsFactory;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    aget-object v1, v0, p1

    if-nez v1, :cond_3

    .line 127
    new-instance v1, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-direct {v1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;-><init>()V

    aput-object v1, v0, p1

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "iImsConfigService":Lvendor/qti/ims/configaidlservice/IConfigService;
    new-instance v1, Lvendor/qti/ims/factoryaidlservice/ResultStatus;

    invoke-direct {v1}, Lvendor/qti/ims/factoryaidlservice/ResultStatus;-><init>()V

    .line 130
    .local v1, "resStatus":Lvendor/qti/ims/factoryaidlservice/ResultStatus;
    const/4 v2, 0x1

    iput v2, v1, Lvendor/qti/ims/factoryaidlservice/ResultStatus;->status:I

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getConfigService slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsRcsAidlServiceMgr"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getaidlConfigListener()Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;

    move-result-object v2

    if-nez v2, :cond_0

    .line 133
    const-string v2, " aidlconfiglistener is null"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    :try_start_0
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factoryaidlservice/IImsFactory;

    if-eqz v2, :cond_2

    .line 136
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    aget-object v5, v5, p1

    .line 137
    invoke-virtual {v5}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getaidlConfigListener()Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;

    move-result-object v5

    .line 136
    invoke-interface {v2, v4, v5, v1}, Lvendor/qti/ims/factoryaidlservice/IImsFactory;->createConfigService(ILvendor/qti/ims/configaidlservice/IConfigServiceListener;Lvendor/qti/ims/factoryaidlservice/ResultStatus;)Lvendor/qti/ims/configaidlservice/IConfigService;

    move-result-object v2

    move-object v0, v2

    .line 138
    iget v2, v1, Lvendor/qti/ims/factoryaidlservice/ResultStatus;->status:I

    const/4 v4, 0x2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 139
    iget-object v2, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->setAidlConfigService(Lvendor/qti/ims/configaidlservice/IConfigService;)V

    .line 140
    iget-object v2, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    aget-object v2, v2, p1

    invoke-virtual {v2, v4}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getUserAgent(I)V

    goto :goto_0

    .line 142
    :cond_1
    iget v2, v1, Lvendor/qti/ims/factoryaidlservice/ResultStatus;->status:I

    if-ne v2, v4, :cond_2

    .line 143
    const-string v2, "AIDL:IImsFactory unsupported"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_2
    :goto_0
    goto :goto_1

    .line 146
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "Unable to get to IConfigService instance"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0    # "iImsConfigService":Lvendor/qti/ims/configaidlservice/IConfigService;
    .end local v1    # "resStatus":Lvendor/qti/ims/factoryaidlservice/ResultStatus;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getImsOptionsService(I)Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;
    .locals 2
    .param p1, "slotId"    # I

    .line 418
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factoryaidlservice/IImsFactory;

    if-nez v0, :cond_0

    .line 419
    const/4 v0, 0x0

    return-object v0

    .line 421
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 423
    new-instance v1, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    invoke-direct {v1, p1}, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;-><init>(I)V

    aput-object v1, v0, p1

    .line 424
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->initializeImsOptionsService(I)V

    .line 426
    :cond_1
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getImsPresenceService(I)Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;
    .locals 2
    .param p1, "slotId"    # I

    .line 359
    sget-boolean v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    if-nez v0, :cond_0

    .line 360
    const/4 v0, 0x0

    return-object v0

    .line 362
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 364
    new-instance v1, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    invoke-direct {v1, p1}, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;-><init>(I)V

    aput-object v1, v0, p1

    .line 365
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->initializeImsPresenceService(I)V

    .line 367
    :cond_1
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRcsCapExchangeImpl(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;ILjava/util/concurrent/Executor;)Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;
    .locals 2
    .param p1, "l"    # Landroid/telephony/ims/stub/CapabilityExchangeEventListener;
    .param p2, "SlotId"    # I
    .param p3, "localexec"    # Ljava/util/concurrent/Executor;

    .line 286
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mRcsCapExchanges:[Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    new-instance v1, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    invoke-direct {v1, p3, p1, p2}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/stub/CapabilityExchangeEventListener;I)V

    aput-object v1, v0, p2

    .line 287
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mRcsCapExchanges:[Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getSipTransportService(I)Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;
    .locals 1
    .param p1, "slotId"    # I

    .line 290
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mSipTransportService:[Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSipTransportService(ILvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;)Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    .line 297
    const-string v0, "ImsRcsAidlServiceMgr getSipTransportService slotId: "

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-boolean v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mSipTransportService:[Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 299
    const-string v0, "ImsRcsAidlServiceMgr"

    const-string v1, " mSipTransportService[slotId] is null, so initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mSipTransportService:[Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    new-instance v1, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    invoke-direct {v1, p1, p2}, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;-><init>(ILvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;)V

    aput-object v1, v0, p1

    .line 302
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mSipTransportService:[Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->initializeRcsSipTransportService(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;)V

    .line 304
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mSipTransportService:[Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public initialize()Z
    .locals 4

    .line 97
    sget-boolean v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 98
    return v1

    .line 101
    :cond_0
    const-string v0, "initialize()"

    const-string v2, "ImsRcsAidlServiceMgr"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->initializeAidlFactoryService()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    const/4 v0, 0x0

    return v0

    .line 108
    :cond_1
    :try_start_0
    const-string v0, "setDeathRecipient for iimsfactory Aidl service"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factoryaidlservice/IImsFactory;

    invoke-interface {v0}, Lvendor/qti/ims/factoryaidlservice/IImsFactory;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v2, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr$FactoryDeathRecipient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr$FactoryDeathRecipient;-><init>(Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr$1;)V

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    sget v0, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    new-array v0, v0, [Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    .line 115
    return v1
.end method

.method public initializeAidlFactoryService()Z
    .locals 4

    .line 83
    const-string v0, "ImsRcsAidlServiceMgr"

    :try_start_0
    const-string v1, "vendor.qti.ims.factoryaidlservice.IImsFactory/default"

    invoke-static {v1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/qti/ims/factoryaidlservice/IImsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/ims/factoryaidlservice/IImsFactory;

    move-result-object v1

    sput-object v1, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factoryaidlservice/IImsFactory;

    .line 84
    if-eqz v1, :cond_0

    .line 85
    const-string v1, "IImsFactory aidlservice initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v1, 0x1

    sput-boolean v1, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": Exception- Unable to get Aidl DataChannelService : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    sget-boolean v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    return v0
.end method

.method public initializeImsOptionsService(I)V
    .locals 6
    .param p1, "slotId"    # I

    .line 385
    const-string v0, "initializeImsOptionsService start"

    const-string v1, "ImsRcsAidlServiceMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 389
    return-void

    .line 391
    :cond_0
    new-instance v0, Lvendor/qti/ims/factoryaidlservice/ResultStatus;

    invoke-direct {v0}, Lvendor/qti/ims/factoryaidlservice/ResultStatus;-><init>()V

    .line 392
    .local v0, "resStatus":Lvendor/qti/ims/factoryaidlservice/ResultStatus;
    const/4 v2, 0x1

    iput v2, v0, Lvendor/qti/ims/factoryaidlservice/ResultStatus;->status:I

    .line 393
    const/4 v2, 0x0

    .line 394
    .local v2, "iOptionsService":Lvendor/qti/ims/rcsuceaidlservice/IOptionsService;
    sget-boolean v3, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    if-eqz v3, :cond_4

    .line 396
    :try_start_0
    sget-object v3, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factoryaidlservice/IImsFactory;

    if-eqz v3, :cond_3

    .line 397
    const-string v3, "initializeImsOptionsService createOptionsService "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    sget-object v3, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factoryaidlservice/IImsFactory;

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->getAidlOptionsListener()Lvendor/qti/ims/rcsuceaidlservice/IOptionsListener;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, Lvendor/qti/ims/factoryaidlservice/IImsFactory;->createOptionsService(ILvendor/qti/ims/rcsuceaidlservice/IOptionsListener;Lvendor/qti/ims/factoryaidlservice/ResultStatus;)Lvendor/qti/ims/rcsuceaidlservice/IOptionsService;

    move-result-object v3

    move-object v2, v3

    .line 399
    if-eqz v2, :cond_1

    iget v3, v0, Lvendor/qti/ims/factoryaidlservice/ResultStatus;->status:I

    if-nez v3, :cond_1

    .line 400
    iget-object v3, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    aget-object v3, v3, p1

    invoke-virtual {v3, v2}, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->setAidlOptionsService(Lvendor/qti/ims/rcsuceaidlservice/IOptionsService;)V

    goto :goto_0

    .line 402
    :cond_1
    iget v3, v0, Lvendor/qti/ims/factoryaidlservice/ResultStatus;->status:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 403
    const-string v3, "OptionsService unsupported"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 406
    :cond_2
    const-string v3, "optionsservice null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 409
    :cond_3
    const-string v3, "initalizeImsOptionsService no factory"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    goto :goto_1

    .line 411
    :catch_0
    move-exception v3

    .line 412
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Unable to get to IOptionsService instance"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    return-void
.end method

.method public declared-synchronized initializeImsPresenceService(I)V
    .locals 2
    .param p1, "slotId"    # I

    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 348
    monitor-exit p0

    return-void

    .line 350
    :cond_0
    :try_start_1
    const-string v0, "ImsRcsAidlServiceMgr"

    const-string v1, "initializeImsPresenceService start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factoryaidlservice/IImsFactory;

    if-eqz v0, :cond_1

    .line 352
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getAidlPresenceService(I)V

    goto :goto_0

    .line 354
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;
    :cond_1
    const-string v0, "ImsRcsAidlServiceMgr"

    const-string v1, "initializeImsPresenceService no factory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    :goto_0
    monitor-exit p0

    return-void

    .line 344
    .end local p1    # "slotId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initializeRcsSipTransportService(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;)V
    .locals 2
    .param p1, "p"    # Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    monitor-enter p0

    .line 308
    if-eqz p1, :cond_0

    .line 310
    :try_start_0
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->getSlotId()I

    move-result v0

    invoke-direct {p0, v0}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getIsSipTransportInited(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    const-string v0, "ImsRcsAidlServiceMgrSipTransportService initializeSipTransportService slotId: "

    .line 313
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->getSlotId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factoryaidlservice/IImsFactory;

    if-eqz v0, :cond_0

    .line 316
    const-string v0, "ImsRcsAidlServiceMgr"

    const-string v1, "SipTransportService reinitialize - mImsFactoryInstance is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getAidlRcsSipTransport(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 307
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;
    .end local p1    # "p":Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 321
    .restart local p0    # "this":Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;
    .restart local p1    # "p":Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public reInitHalServices()V
    .locals 7

    .line 231
    const-string v0, "calling reInitHalServices"

    const-string v1, "ImsRcsAidlServiceMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->REINTIALIZE_FLAG:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 233
    const-string v0, "REINTIALIZE_FLAG is 0"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p0}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->initialize()Z

    .line 235
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsService;->getImsConfigService()[Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    move-result-object v0

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 236
    .local v5, "configImpl":Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;
    const-string v6, "configImpl call initwrapper"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v5}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->initConfigWrapper()V

    .line 235
    .end local v5    # "configImpl":Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 239
    :cond_0
    const-string v0, "REINTIALIZE_FLAG set to 1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v0, 0x1

    iput v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->REINTIALIZE_FLAG:I

    .line 243
    :cond_1
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mSipTransportService:[Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 244
    .local v3, "p":Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;
    if-nez v3, :cond_2

    .line 245
    goto :goto_2

    .line 246
    :cond_2
    nop

    .line 247
    invoke-virtual {v3}, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->getSlotId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 246
    const-string v5, "ImsRcsAidlServiceMgrSipTransportService reinitialize slotId: "

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0, v3}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->initializeRcsSipTransportService(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;)V

    .line 243
    .end local v3    # "p":Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 251
    :cond_3
    const/4 v0, 0x0

    .local v0, "slotId":I
    :goto_3
    sget v1, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    if-ge v0, v1, :cond_4

    .line 252
    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->initializeImsPresenceService(I)V

    .line 253
    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->initializeImsOptionsService(I)V

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 255
    .end local v0    # "slotId":I
    :cond_4
    return-void
.end method

.method public reinitializeOptionsService()V
    .locals 2

    .line 275
    const/4 v0, 0x0

    .local v0, "slotId":I
    :goto_0
    sget v1, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    if-ge v0, v1, :cond_1

    .line 276
    iget-object v1, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->initializeImsOptionsService(I)V

    .line 275
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    .end local v0    # "slotId":I
    :cond_1
    return-void
.end method

.method public reinitializePresenceService()V
    .locals 2

    .line 268
    const/4 v0, 0x0

    .local v0, "slotId":I
    :goto_0
    sget v1, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    if-ge v0, v1, :cond_1

    .line 269
    invoke-direct {p0, v0}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getPresenceSvcReintFlag(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 270
    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->initializeImsPresenceService(I)V

    .line 268
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "slotId":I
    :cond_1
    return-void
.end method

.method public reinitializeSipTransportService()V
    .locals 5

    .line 259
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mSipTransportService:[Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 260
    .local v3, "p":Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;
    if-eqz v3, :cond_0

    .line 261
    invoke-virtual {v3}, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->getSlotId()I

    move-result v4

    invoke-direct {p0, v4}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getIsSipTransportInited(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 262
    invoke-virtual {p0, v3}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->initializeRcsSipTransportService(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;)V

    .line 259
    .end local v3    # "p":Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    :cond_1
    return-void
.end method
