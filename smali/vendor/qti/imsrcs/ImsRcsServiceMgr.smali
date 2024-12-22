.class public Lvendor/qti/imsrcs/ImsRcsServiceMgr;
.super Ljava/lang/Object;
.source "ImsRcsServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/imsrcs/ImsRcsServiceMgr$FactoryDeathRecipient;
    }
.end annotation


# static fields
.field static mImsFactoryInitialized:Z

.field static mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;

.field static mImsFactoryInstance_2_0:Lvendor/qti/ims/factory/V2_0/IImsFactory;

.field static mImsFactoryInstance_2_1:Lvendor/qti/ims/factory/V2_1/IImsFactory;

.field private static mMgr:Lvendor/qti/imsrcs/ImsRcsServiceMgr;


# instance fields
.field final LOG_TAG:Ljava/lang/String;

.field MAX_RETRY_COUNT:I

.field REINTIALIZE_FLAG:I

.field mConfigService:[Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

.field mIsSipTransportInited:[Z

.field mOptionsService:[Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

.field mPresenceService:[Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

.field mPresenceSvcReinitFlag:[I

.field mPresenceSvcRetryCount:[I

.field mRcsCapExchanges:[Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

.field mSipTransportService:[Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

.field mSipTransportSvcRetryCount:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;

    .line 37
    sput-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_1:Lvendor/qti/ims/factory/V2_1/IImsFactory;

    .line 38
    sput-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_0:Lvendor/qti/ims/factory/V2_0/IImsFactory;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInitialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "ImsRcsServiceMgr"

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->LOG_TAG:Ljava/lang/String;

    .line 46
    const/16 v0, 0xa

    iput v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->MAX_RETRY_COUNT:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->REINTIALIZE_FLAG:I

    .line 54
    sget v0, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    new-array v0, v0, [Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mSipTransportService:[Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    .line 55
    sget v0, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    new-array v0, v0, [Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    .line 56
    sget v0, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    new-array v0, v0, [Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    .line 57
    sget v0, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mSipTransportSvcRetryCount:[I

    .line 58
    sget v0, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceSvcReinitFlag:[I

    .line 59
    sget v0, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceSvcRetryCount:[I

    .line 60
    sget v0, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mIsSipTransportInited:[Z

    .line 61
    sget v0, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    new-array v0, v0, [Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mRcsCapExchanges:[Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    .line 62
    return-void
.end method

.method static synthetic access$100(Lvendor/qti/imsrcs/ImsRcsServiceMgr;)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    .line 34
    invoke-direct {p0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->cleanup()V

    return-void
.end method

.method static synthetic access$1000(Lvendor/qti/imsrcs/ImsRcsServiceMgr;I)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    .param p1, "x1"    # I

    .line 34
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getHidlPresenceService_1_0(I)V

    return-void
.end method

.method static synthetic access$1100(Lvendor/qti/imsrcs/ImsRcsServiceMgr;I)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    .param p1, "x1"    # I

    .line 34
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getHidlPresenceService_1_1(I)V

    return-void
.end method

.method static synthetic access$200(Lvendor/qti/imsrcs/ImsRcsServiceMgr;II)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 34
    invoke-direct {p0, p1, p2}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->setSipTransportSvcRetryCount(II)V

    return-void
.end method

.method static synthetic access$300(Lvendor/qti/imsrcs/ImsRcsServiceMgr;IZ)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 34
    invoke-direct {p0, p1, p2}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->setSipTransportInited(IZ)V

    return-void
.end method

.method static synthetic access$400(Lvendor/qti/imsrcs/ImsRcsServiceMgr;I)I
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    .param p1, "x1"    # I

    .line 34
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getSipTransportSvcRetryCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lvendor/qti/imsrcs/ImsRcsServiceMgr;Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    .param p1, "x1"    # Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    .line 34
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getHidlRcsSipTransport_1_0(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V

    return-void
.end method

.method static synthetic access$600(Lvendor/qti/imsrcs/ImsRcsServiceMgr;Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    .param p1, "x1"    # Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    .line 34
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getHidlRcsSipTransport_1_1(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V

    return-void
.end method

.method static synthetic access$700(Lvendor/qti/imsrcs/ImsRcsServiceMgr;II)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 34
    invoke-direct {p0, p1, p2}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->setPresenceSvcRetryCount(II)V

    return-void
.end method

.method static synthetic access$800(Lvendor/qti/imsrcs/ImsRcsServiceMgr;II)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 34
    invoke-direct {p0, p1, p2}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->setPresenceSvcReintFlag(II)V

    return-void
.end method

.method static synthetic access$900(Lvendor/qti/imsrcs/ImsRcsServiceMgr;I)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    .param p1, "x1"    # I

    .line 34
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->initializeImsPresenceRetry(I)V

    return-void
.end method

.method private cleanup()V
    .locals 9

    .line 356
    const-string v0, "Native serviceDied cleanup"

    const-string v1, "ImsRcsServiceMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v0, 0x0

    sput-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;

    .line 358
    sput-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_1:Lvendor/qti/ims/factory/V2_1/IImsFactory;

    .line 359
    sput-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_0:Lvendor/qti/ims/factory/V2_0/IImsFactory;

    .line 360
    const/4 v0, 0x0

    sput-boolean v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInitialized:Z

    .line 361
    iput v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->REINTIALIZE_FLAG:I

    .line 362
    iget-object v2, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 364
    .local v5, "icsWrapper":Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;
    :try_start_0
    invoke-virtual {v5}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->clear()V

    .line 366
    const-string v6, " ImsConfigServiceWrapper cleanup"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    goto :goto_1

    .line 368
    :catch_0
    move-exception v6

    .line 369
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ImsConfigServiceWrapper cleanup "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v5    # "icsWrapper":Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 373
    :cond_0
    iget-object v2, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    array-length v3, v2

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 374
    .local v5, "p":Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;
    if-nez v5, :cond_1

    .line 376
    goto :goto_3

    .line 379
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->presenceDied()V

    .line 380
    const-string v6, " presenceDied"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 385
    goto :goto_3

    .line 382
    :catch_1
    move-exception v6

    .line 383
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v7, "presenceDied caught Excpetion:"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    .end local v5    # "p":Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 390
    :cond_2
    iget-object v2, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    array-length v3, v2

    move v4, v0

    :goto_4
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 391
    .local v5, "o":Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;
    if-nez v5, :cond_3

    .line 393
    goto :goto_5

    .line 396
    :cond_3
    :try_start_2
    invoke-virtual {v5}, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->optionsDied()V

    .line 397
    const-string v6, " optionsDied"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 402
    goto :goto_5

    .line 399
    :catch_2
    move-exception v6

    .line 400
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v7, "optionsDied caught Exception:"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 390
    .end local v5    # "o":Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 407
    :cond_4
    iget-object v2, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mSipTransportService:[Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    array-length v3, v2

    move v4, v0

    :goto_6
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    .line 408
    .local v5, "p":Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;
    if-nez v5, :cond_5

    .line 410
    const-string v6, " SipTransportService obj is null"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    goto :goto_7

    .line 414
    :cond_5
    :try_start_3
    invoke-virtual {v5}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->sipTransportDied()V

    .line 415
    const-string v6, " sipTransportDied"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 419
    goto :goto_7

    .line 417
    :catch_3
    move-exception v6

    .line 418
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

    .line 407
    .end local v5    # "p":Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 421
    :cond_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    sget v3, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    if-ge v2, v3, :cond_7

    .line 422
    const-string v3, " clearing reinit count"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v3, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mIsSipTransportInited:[Z

    aput-boolean v0, v3, v2

    .line 424
    iget-object v3, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mSipTransportSvcRetryCount:[I

    aput v0, v3, v2

    .line 425
    iget-object v3, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceSvcRetryCount:[I

    aput v0, v3, v2

    .line 426
    iget-object v3, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceSvcReinitFlag:[I

    aput v0, v3, v2

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 429
    .end local v2    # "i":I
    :cond_7
    invoke-virtual {p0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->reInitHalServices()V

    .line 430
    return-void
.end method

.method private fallbackToFactory2_0()Z
    .locals 4

    .line 598
    const-string v0, "ImsRcsServiceMgr"

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "default"

    invoke-static {v2, v1}, Lvendor/qti/ims/factory/V2_0/IImsFactory;->getService(Ljava/lang/String;Z)Lvendor/qti/ims/factory/V2_0/IImsFactory;

    move-result-object v2

    sput-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_0:Lvendor/qti/ims/factory/V2_0/IImsFactory;

    .line 599
    const-string v2, "IImsFactory.getService for v2_0 fallback"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    goto :goto_0

    .line 601
    :catch_0
    move-exception v2

    .line 602
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Unable to bind to IImsFactory v2_0 instance"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_0:Lvendor/qti/ims/factory/V2_0/IImsFactory;

    if-nez v0, :cond_0

    .line 605
    const/4 v0, 0x0

    return v0

    .line 607
    :cond_0
    return v1
.end method

.method private fallbackToFactory2_1()Z
    .locals 4

    .line 584
    const-string v0, "ImsRcsServiceMgr"

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "default"

    invoke-static {v2, v1}, Lvendor/qti/ims/factory/V2_1/IImsFactory;->getService(Ljava/lang/String;Z)Lvendor/qti/ims/factory/V2_1/IImsFactory;

    move-result-object v2

    sput-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_1:Lvendor/qti/ims/factory/V2_1/IImsFactory;

    .line 585
    const-string v2, "IImsFactory.getService for v2_1 fallback"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    goto :goto_0

    .line 587
    :catch_0
    move-exception v2

    .line 588
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Unable to bind to IImsFactory v2_1 instance"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_1:Lvendor/qti/ims/factory/V2_1/IImsFactory;

    if-nez v0, :cond_0

    .line 591
    const/4 v0, 0x0

    return v0

    .line 593
    :cond_0
    return v1
.end method

.method private declared-synchronized getFactoryInstance2_0()Lvendor/qti/ims/factory/V2_0/IImsFactory;
    .locals 2

    monitor-enter p0

    .line 159
    :try_start_0
    invoke-direct {p0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getFactoryInstance2_1()Lvendor/qti/ims/factory/V2_1/IImsFactory;

    move-result-object v0

    .line 160
    .local v0, "inst":Lvendor/qti/ims/factory/V2_0/IImsFactory;
    if-nez v0, :cond_0

    .line 161
    sget-object v1, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_0:Lvendor/qti/ims/factory/V2_0/IImsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 163
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 158
    .end local v0    # "inst":Lvendor/qti/ims/factory/V2_0/IImsFactory;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getFactoryInstance2_1()Lvendor/qti/ims/factory/V2_1/IImsFactory;
    .locals 2

    monitor-enter p0

    .line 151
    :try_start_0
    invoke-direct {p0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getFactoryInstance2_2()Lvendor/qti/ims/factory/V2_2/IImsFactory;

    move-result-object v0

    .line 152
    .local v0, "inst":Lvendor/qti/ims/factory/V2_1/IImsFactory;
    if-nez v0, :cond_0

    .line 153
    sget-object v1, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_1:Lvendor/qti/ims/factory/V2_1/IImsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 155
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 150
    .end local v0    # "inst":Lvendor/qti/ims/factory/V2_1/IImsFactory;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getFactoryInstance2_2()Lvendor/qti/ims/factory/V2_2/IImsFactory;
    .locals 1

    monitor-enter p0

    .line 147
    :try_start_0
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 147
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getHidlPresenceService_1_0(I)V
    .locals 5
    .param p1, "slotId"    # I

    .line 772
    const-string v0, "getHidlPresenceService_1_0 enter"

    const-string v1, "ImsRcsServiceMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    new-instance v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$8;

    invoke-direct {v0, p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr$8;-><init>(Lvendor/qti/imsrcs/ImsRcsServiceMgr;I)V

    .line 790
    .local v0, "hidl_presence_cb":Lvendor/qti/ims/factory/V2_0/IImsFactory$createPresenceServiceCallback;
    :try_start_0
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;

    if-eqz v2, :cond_0

    .line 791
    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    aget-object v4, v4, p1

    .line 792
    invoke-virtual {v4}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->getHidlPresenceListener()Lvendor/qti/ims/rcsuce/V1_2/IPresenceListener;

    move-result-object v4

    .line 791
    invoke-interface {v2, v3, v4, v0}, Lvendor/qti/ims/factory/V2_2/IImsFactory;->createPresenceService(ILvendor/qti/ims/rcsuce/V1_0/IPresenceListener;Lvendor/qti/ims/factory/V2_0/IImsFactory$createPresenceServiceCallback;)V

    goto :goto_0

    .line 793
    :cond_0
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_1:Lvendor/qti/ims/factory/V2_1/IImsFactory;

    if-eqz v2, :cond_1

    .line 794
    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    aget-object v4, v4, p1

    .line 795
    invoke-virtual {v4}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->getHidlPresenceListener()Lvendor/qti/ims/rcsuce/V1_2/IPresenceListener;

    move-result-object v4

    .line 794
    invoke-interface {v2, v3, v4, v0}, Lvendor/qti/ims/factory/V2_1/IImsFactory;->createPresenceService(ILvendor/qti/ims/rcsuce/V1_0/IPresenceListener;Lvendor/qti/ims/factory/V2_0/IImsFactory$createPresenceServiceCallback;)V

    goto :goto_0

    .line 796
    :cond_1
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_0:Lvendor/qti/ims/factory/V2_0/IImsFactory;

    if-eqz v2, :cond_2

    .line 797
    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    aget-object v4, v4, p1

    .line 798
    invoke-virtual {v4}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->getHidlPresenceListener()Lvendor/qti/ims/rcsuce/V1_2/IPresenceListener;

    move-result-object v4

    .line 797
    invoke-interface {v2, v3, v4, v0}, Lvendor/qti/ims/factory/V2_0/IImsFactory;->createPresenceService(ILvendor/qti/ims/rcsuce/V1_0/IPresenceListener;Lvendor/qti/ims/factory/V2_0/IImsFactory$createPresenceServiceCallback;)V

    goto :goto_0

    .line 800
    :cond_2
    const-string v2, "no factory initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :goto_0
    goto :goto_1

    .line 802
    :catch_0
    move-exception v2

    .line 803
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "Unable to get to IPresenceService::V1_0 instance"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private getHidlPresenceService_1_1(I)V
    .locals 5
    .param p1, "slotId"    # I

    .line 808
    const-string v0, "getHidlPresenceService_1_1 enter"

    const-string v1, "ImsRcsServiceMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    new-instance v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$9;

    invoke-direct {v0, p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr$9;-><init>(Lvendor/qti/imsrcs/ImsRcsServiceMgr;I)V

    .line 831
    .local v0, "hidl_presence_1_1_cb":Lvendor/qti/ims/factory/V2_1/IImsFactory$createPresenceService_1_1Callback;
    :try_start_0
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;

    if-eqz v2, :cond_0

    .line 832
    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    aget-object v4, v4, p1

    .line 833
    invoke-virtual {v4}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->getHidlPresenceListener()Lvendor/qti/ims/rcsuce/V1_2/IPresenceListener;

    move-result-object v4

    .line 832
    invoke-interface {v2, v3, v4, v0}, Lvendor/qti/ims/factory/V2_2/IImsFactory;->createPresenceService_1_1(ILvendor/qti/ims/rcsuce/V1_1/IPresenceListener;Lvendor/qti/ims/factory/V2_1/IImsFactory$createPresenceService_1_1Callback;)V

    goto :goto_0

    .line 834
    :cond_0
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_1:Lvendor/qti/ims/factory/V2_1/IImsFactory;

    if-eqz v2, :cond_1

    .line 835
    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    aget-object v4, v4, p1

    .line 836
    invoke-virtual {v4}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->getHidlPresenceListener()Lvendor/qti/ims/rcsuce/V1_2/IPresenceListener;

    move-result-object v4

    .line 835
    invoke-interface {v2, v3, v4, v0}, Lvendor/qti/ims/factory/V2_1/IImsFactory;->createPresenceService_1_1(ILvendor/qti/ims/rcsuce/V1_1/IPresenceListener;Lvendor/qti/ims/factory/V2_1/IImsFactory$createPresenceService_1_1Callback;)V

    goto :goto_0

    .line 838
    :cond_1
    const-string v2, "no factory initialized for createPresenceService_1_1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :goto_0
    goto :goto_1

    .line 840
    :catch_0
    move-exception v2

    .line 841
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "Unable to get to IPresenceService::V1_1 instance"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private getHidlPresenceService_1_2(I)V
    .locals 5
    .param p1, "slotId"    # I

    .line 846
    const-string v0, "getHidlPresenceService_1_2 enter"

    const-string v1, "ImsRcsServiceMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    new-instance v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$10;

    invoke-direct {v0, p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr$10;-><init>(Lvendor/qti/imsrcs/ImsRcsServiceMgr;I)V

    .line 869
    .local v0, "hidl_presence_1_2_cb":Lvendor/qti/ims/factory/V2_2/IImsFactory$createPresenceService_1_2Callback;
    :try_start_0
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;

    if-eqz v2, :cond_0

    .line 870
    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    aget-object v4, v4, p1

    .line 871
    invoke-virtual {v4}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->getHidlPresenceListener()Lvendor/qti/ims/rcsuce/V1_2/IPresenceListener;

    move-result-object v4

    .line 870
    invoke-interface {v2, v3, v4, v0}, Lvendor/qti/ims/factory/V2_2/IImsFactory;->createPresenceService_1_2(ILvendor/qti/ims/rcsuce/V1_2/IPresenceListener;Lvendor/qti/ims/factory/V2_2/IImsFactory$createPresenceService_1_2Callback;)V

    goto :goto_0

    .line 873
    :cond_0
    const-string v2, "no factory initialized for createPresenceService_1_2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :goto_0
    goto :goto_1

    .line 875
    :catch_0
    move-exception v2

    .line 876
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "Unable to get to IPresenceService::V1_2 instance"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private getHidlRcsSipTransport_1_0(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V
    .locals 5
    .param p1, "p"    # Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    .line 611
    const-string v0, "ImsRcsServiceMgr"

    new-instance v1, Lvendor/qti/imsrcs/ImsRcsServiceMgr$5;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr$5;-><init>(Lvendor/qti/imsrcs/ImsRcsServiceMgr;Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V

    .line 631
    .local v1, "hidl_sipTransport_cb":Lvendor/qti/ims/factory/V2_0/IImsFactory$createRcsSipTransportServiceCallback;
    :try_start_0
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;

    if-eqz v2, :cond_0

    .line 632
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getSlotId()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 633
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getHidlSipTransportListener()Lvendor/qti/ims/rcssip/V1_0/ISipTransportListener;

    move-result-object v4

    .line 632
    invoke-interface {v2, v3, v4, v1}, Lvendor/qti/ims/factory/V2_2/IImsFactory;->createRcsSipTransportService(ILvendor/qti/ims/rcssip/V1_0/ISipTransportListener;Lvendor/qti/ims/factory/V2_0/IImsFactory$createRcsSipTransportServiceCallback;)V

    goto :goto_0

    .line 636
    :cond_0
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_1:Lvendor/qti/ims/factory/V2_1/IImsFactory;

    if-eqz v2, :cond_1

    .line 637
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getSlotId()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 638
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getHidlSipTransportListener()Lvendor/qti/ims/rcssip/V1_0/ISipTransportListener;

    move-result-object v4

    .line 637
    invoke-interface {v2, v3, v4, v1}, Lvendor/qti/ims/factory/V2_1/IImsFactory;->createRcsSipTransportService(ILvendor/qti/ims/rcssip/V1_0/ISipTransportListener;Lvendor/qti/ims/factory/V2_0/IImsFactory$createRcsSipTransportServiceCallback;)V

    goto :goto_0

    .line 641
    :cond_1
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_0:Lvendor/qti/ims/factory/V2_0/IImsFactory;

    if-eqz v2, :cond_2

    .line 642
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getSlotId()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 643
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getHidlSipTransportListener()Lvendor/qti/ims/rcssip/V1_0/ISipTransportListener;

    move-result-object v4

    .line 642
    invoke-interface {v2, v3, v4, v1}, Lvendor/qti/ims/factory/V2_0/IImsFactory;->createRcsSipTransportService(ILvendor/qti/ims/rcssip/V1_0/ISipTransportListener;Lvendor/qti/ims/factory/V2_0/IImsFactory$createRcsSipTransportServiceCallback;)V

    goto :goto_0

    .line 647
    :cond_2
    const-string v2, "no factory initialized"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :goto_0
    goto :goto_1

    .line 649
    :catch_0
    move-exception v2

    .line 650
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Unable to get to ISipTransportService::V1_0 instance"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private getHidlRcsSipTransport_1_1(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V
    .locals 5
    .param p1, "p"    # Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    .line 655
    const-string v0, "ImsRcsServiceMgr"

    new-instance v1, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;-><init>(Lvendor/qti/imsrcs/ImsRcsServiceMgr;Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V

    .line 698
    .local v1, "hidl_sipTransport_1_1_cb":Lvendor/qti/ims/factory/V2_1/IImsFactory$createRcsSipTransportService_1_1Callback;
    :try_start_0
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;

    if-eqz v2, :cond_0

    .line 699
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getSlotId()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 700
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getHidlSipTransportListener()Lvendor/qti/ims/rcssip/V1_0/ISipTransportListener;

    move-result-object v4

    .line 699
    invoke-interface {v2, v3, v4, v1}, Lvendor/qti/ims/factory/V2_2/IImsFactory;->createRcsSipTransportService_1_1(ILvendor/qti/ims/rcssip/V1_0/ISipTransportListener;Lvendor/qti/ims/factory/V2_1/IImsFactory$createRcsSipTransportService_1_1Callback;)V

    goto :goto_0

    .line 703
    :cond_0
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_1:Lvendor/qti/ims/factory/V2_1/IImsFactory;

    if-eqz v2, :cond_1

    .line 704
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getSlotId()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 705
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getHidlSipTransportListener()Lvendor/qti/ims/rcssip/V1_0/ISipTransportListener;

    move-result-object v4

    .line 704
    invoke-interface {v2, v3, v4, v1}, Lvendor/qti/ims/factory/V2_1/IImsFactory;->createRcsSipTransportService_1_1(ILvendor/qti/ims/rcssip/V1_0/ISipTransportListener;Lvendor/qti/ims/factory/V2_1/IImsFactory$createRcsSipTransportService_1_1Callback;)V

    goto :goto_0

    .line 709
    :cond_1
    const-string v2, "no factory initialized 1.1 createRcsSip"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :goto_0
    goto :goto_1

    .line 711
    :catch_0
    move-exception v2

    .line 712
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Unable to get to ISipTransportService::V1_1 instance"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private getHidlRcsSipTransport_1_2(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V
    .locals 5
    .param p1, "p"    # Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    .line 717
    const-string v0, "ImsRcsServiceMgr"

    new-instance v1, Lvendor/qti/imsrcs/ImsRcsServiceMgr$7;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr$7;-><init>(Lvendor/qti/imsrcs/ImsRcsServiceMgr;Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V

    .line 758
    .local v1, "hidl_sipTransport_1_2_cb":Lvendor/qti/ims/factory/V2_2/IImsFactory$createRcsSipTransportService_1_2Callback;
    :try_start_0
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;

    if-eqz v2, :cond_0

    .line 759
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getSlotId()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 760
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getHidlSipTransportListener()Lvendor/qti/ims/rcssip/V1_0/ISipTransportListener;

    move-result-object v4

    .line 759
    invoke-interface {v2, v3, v4, v1}, Lvendor/qti/ims/factory/V2_2/IImsFactory;->createRcsSipTransportService_1_2(ILvendor/qti/ims/rcssip/V1_0/ISipTransportListener;Lvendor/qti/ims/factory/V2_2/IImsFactory$createRcsSipTransportService_1_2Callback;)V

    goto :goto_0

    .line 764
    :cond_0
    const-string v2, "no factory initialized for 1.2 createRcsSip"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :goto_0
    goto :goto_1

    .line 766
    :catch_0
    move-exception v2

    .line 767
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Unable to get to ISipTransportService::V1_2 instance"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    .locals 2

    const-class v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mMgr:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    invoke-direct {v1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;-><init>()V

    sput-object v1, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mMgr:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    .line 68
    :cond_0
    sget-object v1, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mMgr:Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getIsSipTransportInited(I)Z
    .locals 1
    .param p1, "slotId"    # I

    monitor-enter p0

    .line 552
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mIsSipTransportInited:[Z

    aget-boolean v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 552
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsServiceMgr;
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

    .line 560
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceSvcReinitFlag:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 560
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsServiceMgr;
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

    .line 568
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceSvcRetryCount:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 568
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsServiceMgr;
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

    .line 544
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mSipTransportSvcRetryCount:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 544
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    .end local p1    # "slotId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private initializeImsPresenceRetry(I)V
    .locals 3
    .param p1, "slotId"    # I

    .line 303
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getPresenceSvcRetryCount(I)I

    move-result v0

    .line 304
    .local v0, "retryValue":I
    iget v1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->MAX_RETRY_COUNT:I

    if-ge v0, v1, :cond_0

    .line 305
    add-int/lit8 v0, v0, 0x1

    .line 306
    invoke-direct {p0, p1, v0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->setPresenceSvcRetryCount(II)V

    .line 307
    const-string v1, "ImsRcsServiceMgr V1.1 IPresenceService retry Attempt: "

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    goto :goto_0

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 314
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->initializeImsPresenceService(I)V

    goto :goto_1

    .line 316
    :cond_0
    const-string v1, "ImsRcsServiceMgr"

    const-string v2, "createPresenceService failed: V1.1 IPresenceService MAX_RETRY_COUNT reached"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :goto_1
    return-void
.end method

.method private isInterfaceListedInManifest(Ljava/lang/String;)Z
    .locals 8
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 881
    const/4 v0, 0x0

    .line 882
    .local v0, "found":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isInterfaceListedInManifest is started with string : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRcsServiceMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_2/IServiceManager;->getService()Landroid/hidl/manager/V1_2/IServiceManager;

    move-result-object v1

    .line 886
    .local v1, "sm":Landroid/hidl/manager/V1_2/IServiceManager;
    invoke-interface {v1, p1}, Landroid/hidl/manager/V1_2/IServiceManager;->listManifestByInterface(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 887
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 888
    .local v5, "str":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " service running for imsfactory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 889
    .end local v5    # "str":Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v2, v2, 0x1

    return v2

    .line 890
    .end local v1    # "sm":Landroid/hidl/manager/V1_2/IServiceManager;
    .end local v3    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 891
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, " error while trying to find factory version in vintf"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method private declared-synchronized setPresenceSvcReintFlag(II)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "value"    # I

    monitor-enter p0

    .line 564
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceSvcReinitFlag:[I

    aput p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    monitor-exit p0

    return-void

    .line 563
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsServiceMgr;
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

    .line 572
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceSvcRetryCount:[I

    aput p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    monitor-exit p0

    return-void

    .line 571
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsServiceMgr;
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

    .line 556
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mIsSipTransportInited:[Z

    aput-boolean p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    monitor-exit p0

    return-void

    .line 555
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsServiceMgr;
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

    .line 548
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mSipTransportSvcRetryCount:[I

    aput p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    monitor-exit p0

    return-void

    .line 547
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    .end local p1    # "slotId":I
    .end local p2    # "value":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public Initialize()Z
    .locals 7

    .line 97
    sget-boolean v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 98
    return v1

    .line 102
    :cond_0
    const-string v0, "initialize()"

    const-string v2, "ImsRcsServiceMgr"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget v0, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    new-array v0, v0, [Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    .line 106
    :try_start_0
    const-string v0, "vendor.qti.ims.factory@2.2::IImsFactory"

    invoke-direct {p0, v0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->isInterfaceListedInManifest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const-string v0, "default"

    invoke-static {v0, v1}, Lvendor/qti/ims/factory/V2_2/IImsFactory;->getService(Ljava/lang/String;Z)Lvendor/qti/ims/factory/V2_2/IImsFactory;

    move-result-object v0

    sput-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;

    .line 108
    const-string v0, "IImsFactory.getService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sput-boolean v1, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInitialized:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_1
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Unable to bind to IImsFactory instance"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sget-boolean v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInitialized:Z

    if-nez v0, :cond_2

    .line 115
    const-string v0, "vendor.qti.ims.factory@2.1::IImsFactory"

    invoke-direct {p0, v0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->isInterfaceListedInManifest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-direct {p0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->fallbackToFactory2_1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    sput-boolean v1, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInitialized:Z

    .line 120
    :cond_2
    sget-boolean v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInitialized:Z

    if-nez v0, :cond_3

    .line 121
    const-string v0, "vendor.qti.ims.factor@2.0::IImsFactory"

    invoke-direct {p0, v0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->isInterfaceListedInManifest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    invoke-direct {p0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->fallbackToFactory2_0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    sput-boolean v1, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInitialized:Z

    .line 126
    :cond_3
    sget-boolean v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInitialized:Z

    if-nez v0, :cond_4

    .line 127
    const/4 v0, 0x0

    return v0

    .line 130
    :cond_4
    :try_start_1
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    .line 131
    new-instance v6, Lvendor/qti/imsrcs/ImsRcsServiceMgr$FactoryDeathRecipient;

    invoke-direct {v6, p0, v5}, Lvendor/qti/imsrcs/ImsRcsServiceMgr$FactoryDeathRecipient;-><init>(Lvendor/qti/imsrcs/ImsRcsServiceMgr;Lvendor/qti/imsrcs/ImsRcsServiceMgr$1;)V

    invoke-interface {v0, v6, v3, v4}, Lvendor/qti/ims/factory/V2_2/IImsFactory;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 132
    const-string v0, "mImsFactoryInstance.linkToDeath"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 133
    :cond_5
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_1:Lvendor/qti/ims/factory/V2_1/IImsFactory;

    if-eqz v0, :cond_6

    .line 134
    new-instance v6, Lvendor/qti/imsrcs/ImsRcsServiceMgr$FactoryDeathRecipient;

    invoke-direct {v6, p0, v5}, Lvendor/qti/imsrcs/ImsRcsServiceMgr$FactoryDeathRecipient;-><init>(Lvendor/qti/imsrcs/ImsRcsServiceMgr;Lvendor/qti/imsrcs/ImsRcsServiceMgr$1;)V

    invoke-interface {v0, v6, v3, v4}, Lvendor/qti/ims/factory/V2_1/IImsFactory;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 135
    const-string v0, "mImsFactoryInstance_2_1.linkToDeath"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 136
    :cond_6
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_0:Lvendor/qti/ims/factory/V2_0/IImsFactory;

    if-eqz v0, :cond_7

    .line 137
    new-instance v6, Lvendor/qti/imsrcs/ImsRcsServiceMgr$FactoryDeathRecipient;

    invoke-direct {v6, p0, v5}, Lvendor/qti/imsrcs/ImsRcsServiceMgr$FactoryDeathRecipient;-><init>(Lvendor/qti/imsrcs/ImsRcsServiceMgr;Lvendor/qti/imsrcs/ImsRcsServiceMgr$1;)V

    invoke-interface {v0, v6, v3, v4}, Lvendor/qti/ims/factory/V2_0/IImsFactory;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 138
    const-string v0, "mImsFactoryInstance_2_0.linkToDeath"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    :cond_7
    :goto_1
    goto :goto_2

    .line 140
    :catch_1
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Unable to bind to DeathRecipient"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return v1
.end method

.method public destroyOptionsService(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 494
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->close()V

    .line 495
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 496
    return-void
.end method

.method public destroyPresenceSevice(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 488
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->close()V

    .line 489
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 490
    return-void
.end method

.method public dispose()V
    .locals 7

    .line 72
    const-string v0, "dispose()"

    const-string v1, "ImsRcsServiceMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 74
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 75
    .local v5, "icsWrapper":Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;
    if-eqz v5, :cond_0

    .line 76
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setConfigCbListener(Lvendor/qti/imsrcs/config/ImsConfigCbListener;)V

    .line 77
    invoke-virtual {v5, v6}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setUceExecutor(Ljava/util/concurrent/Executor;)V

    .line 78
    invoke-virtual {v5, v6}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setUceCbListener(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;)V

    goto :goto_1

    .line 80
    :cond_0
    const-string v6, "ImsConfigServiceWrapper is null"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v5    # "icsWrapper":Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const-string v0, "mConfigService list is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_2
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mSipTransportService:[Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    array-length v3, v0

    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 88
    .local v4, "stsWrapper":Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;
    if-eqz v4, :cond_3

    .line 89
    invoke-virtual {v4}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->clearSipTransportService()I

    goto :goto_3

    .line 91
    :cond_3
    const-string v5, "SipTransportServiceWrapper is null"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v4    # "stsWrapper":Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 94
    :cond_4
    return-void
.end method

.method public getConfigService(I)Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;
    .locals 6
    .param p1, "slotId"    # I

    .line 173
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;

    const-string v1, "ImsRcsServiceMgr"

    if-nez v0, :cond_0

    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_1:Lvendor/qti/ims/factory/V2_1/IImsFactory;

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    aget-object v2, v0, p1

    if-nez v2, :cond_3

    .line 175
    new-instance v2, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-direct {v2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;-><init>()V

    aput-object v2, v0, p1

    .line 177
    new-instance v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$1;

    invoke-direct {v0, p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr$1;-><init>(Lvendor/qti/imsrcs/ImsRcsServiceMgr;I)V

    .line 190
    .local v0, "hidl_config_cb":Lvendor/qti/ims/factory/V2_0/IImsFactory$createConfigServiceCallback;
    new-instance v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr$2;

    invoke-direct {v2, p0, p1, v0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr$2;-><init>(Lvendor/qti/imsrcs/ImsRcsServiceMgr;ILvendor/qti/ims/factory/V2_0/IImsFactory$createConfigServiceCallback;)V

    .line 215
    .local v2, "_hidl_cb":Lvendor/qti/ims/factory/V2_1/IImsFactory$createConfigService_1_1Callback;
    :try_start_0
    sget-object v3, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;

    if-eqz v3, :cond_1

    .line 216
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    aget-object v5, v5, p1

    .line 217
    invoke-virtual {v5}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->gethidlConfigListener()Lvendor/qti/ims/configservice/V1_1/IConfigServiceListener;

    move-result-object v5

    .line 216
    invoke-interface {v3, v4, v5, v2}, Lvendor/qti/ims/factory/V2_2/IImsFactory;->createConfigService_1_1(ILvendor/qti/ims/configservice/V1_1/IConfigServiceListener;Lvendor/qti/ims/factory/V2_1/IImsFactory$createConfigService_1_1Callback;)V

    goto :goto_0

    .line 218
    :cond_1
    sget-object v3, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_1:Lvendor/qti/ims/factory/V2_1/IImsFactory;

    if-eqz v3, :cond_2

    .line 219
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    aget-object v5, v5, p1

    .line 220
    invoke-virtual {v5}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->gethidlConfigListener()Lvendor/qti/ims/configservice/V1_1/IConfigServiceListener;

    move-result-object v5

    .line 219
    invoke-interface {v3, v4, v5, v2}, Lvendor/qti/ims/factory/V2_1/IImsFactory;->createConfigService_1_1(ILvendor/qti/ims/configservice/V1_1/IConfigServiceListener;Lvendor/qti/ims/factory/V2_1/IImsFactory$createConfigService_1_1Callback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_2
    :goto_0
    goto :goto_1

    .line 222
    :catch_0
    move-exception v3

    .line 223
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Unable to get to IConfigService instance"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v0    # "hidl_config_cb":Lvendor/qti/ims/factory/V2_0/IImsFactory$createConfigServiceCallback;
    .end local v2    # "_hidl_cb":Lvendor/qti/ims/factory/V2_1/IImsFactory$createConfigService_1_1Callback;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 226
    :cond_3
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_0:Lvendor/qti/ims/factory/V2_0/IImsFactory;

    if-eqz v0, :cond_4

    .line 228
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    new-instance v2, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-direct {v2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;-><init>()V

    aput-object v2, v0, p1

    .line 229
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->createHidlConfigListener_1_0()V

    .line 231
    new-instance v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$3;

    invoke-direct {v0, p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr$3;-><init>(Lvendor/qti/imsrcs/ImsRcsServiceMgr;I)V

    .line 245
    .restart local v0    # "hidl_config_cb":Lvendor/qti/ims/factory/V2_0/IImsFactory$createConfigServiceCallback;
    :try_start_1
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_0:Lvendor/qti/ims/factory/V2_0/IImsFactory;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->gethidlConfigListener_1_0()Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lvendor/qti/ims/factory/V2_0/IImsFactory;->createConfigService(ILvendor/qti/ims/configservice/V1_0/IConfigServiceListener;Lvendor/qti/ims/factory/V2_0/IImsFactory$createConfigServiceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    goto :goto_2

    .line 246
    :catch_1
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Unable to get to IConfigService_2_0 instance"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v0    # "hidl_config_cb":Lvendor/qti/ims/factory/V2_0/IImsFactory$createConfigServiceCallback;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getImsOptionsService(I)Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;
    .locals 2
    .param p1, "slotId"    # I

    .line 532
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;

    if-nez v0, :cond_0

    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_1:Lvendor/qti/ims/factory/V2_1/IImsFactory;

    if-nez v0, :cond_0

    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_0:Lvendor/qti/ims/factory/V2_0/IImsFactory;

    if-nez v0, :cond_0

    .line 533
    const/4 v0, 0x0

    return-object v0

    .line 535
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 537
    new-instance v1, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    invoke-direct {v1, p1}, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;-><init>(I)V

    aput-object v1, v0, p1

    .line 538
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->initializeImsOptionsService(I)V

    .line 540
    :cond_1
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getImsPresenceService(I)Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;
    .locals 2
    .param p1, "slotId"    # I

    .line 343
    sget-boolean v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInitialized:Z

    if-nez v0, :cond_0

    .line 344
    const/4 v0, 0x0

    return-object v0

    .line 346
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 348
    new-instance v1, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    invoke-direct {v1, p1}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;-><init>(I)V

    aput-object v1, v0, p1

    .line 349
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->initializeImsPresenceService(I)V

    .line 351
    :cond_1
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRcsCapExchangeImpl(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;ILjava/util/concurrent/Executor;)Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;
    .locals 2
    .param p1, "l"    # Landroid/telephony/ims/stub/CapabilityExchangeEventListener;
    .param p2, "SlotId"    # I
    .param p3, "localexec"    # Ljava/util/concurrent/Executor;

    .line 169
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mRcsCapExchanges:[Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    new-instance v1, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    invoke-direct {v1, p3, p1, p2}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/stub/CapabilityExchangeEventListener;I)V

    aput-object v1, v0, p2

    .line 170
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mRcsCapExchanges:[Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getSipTransportService(I)Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;
    .locals 1
    .param p1, "slotId"    # I

    .line 254
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mSipTransportService:[Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSipTransportService(ILvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;)Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    .line 261
    const-string v0, "ImsRcsServiceMgr V1.1 getSipTransportService slotId: "

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-boolean v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInitialized:Z

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mSipTransportService:[Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    aget-object v0, v0, p1

    const-string v1, "ImsRcsServiceMgr"

    if-nez v0, :cond_0

    .line 264
    const-string v0, " mSipTransportService[slotId] is null, so initialize"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mSipTransportService:[Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    new-instance v1, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    invoke-direct {v1, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;-><init>(ILvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;)V

    aput-object v1, v0, p1

    .line 267
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mSipTransportService:[Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->initializeRcsSipTransportService(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V

    goto :goto_0

    .line 269
    :cond_0
    const-string v0, "mSipTransportService[slotId] is Not Null, updating listner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mSipTransportService:[Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->setSipTransportEventListener(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;)V

    .line 273
    :cond_1
    :goto_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mSipTransportService:[Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public initializeImsOptionsService(I)V
    .locals 5
    .param p1, "slotId"    # I

    .line 499
    const-string v0, "initializeImsOptionsService start"

    const-string v1, "ImsRcsServiceMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 503
    return-void

    .line 505
    :cond_0
    sget-boolean v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInitialized:Z

    if-eqz v0, :cond_4

    .line 506
    new-instance v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$4;

    invoke-direct {v0, p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr$4;-><init>(Lvendor/qti/imsrcs/ImsRcsServiceMgr;I)V

    .line 513
    .local v0, "hidl_options_cb":Lvendor/qti/ims/factory/V2_0/IImsFactory$createOptionsServiceCallback;
    :try_start_0
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;

    if-eqz v2, :cond_1

    .line 514
    const-string v2, "initializeImsOptionsService createOptionsService 1.2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->getHidlOptionsListener()Lvendor/qti/ims/rcsuce/V1_0/IOptionsListener;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lvendor/qti/ims/factory/V2_2/IImsFactory;->createOptionsService(ILvendor/qti/ims/rcsuce/V1_0/IOptionsListener;Lvendor/qti/ims/factory/V2_0/IImsFactory$createOptionsServiceCallback;)V

    goto :goto_0

    .line 516
    :cond_1
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_1:Lvendor/qti/ims/factory/V2_1/IImsFactory;

    if-eqz v2, :cond_2

    .line 517
    const-string v2, "initializeImsOptionsService createOptionsService 1.1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_1:Lvendor/qti/ims/factory/V2_1/IImsFactory;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->getHidlOptionsListener()Lvendor/qti/ims/rcsuce/V1_0/IOptionsListener;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lvendor/qti/ims/factory/V2_1/IImsFactory;->createOptionsService(ILvendor/qti/ims/rcsuce/V1_0/IOptionsListener;Lvendor/qti/ims/factory/V2_0/IImsFactory$createOptionsServiceCallback;)V

    goto :goto_0

    .line 519
    :cond_2
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_0:Lvendor/qti/ims/factory/V2_0/IImsFactory;

    if-eqz v2, :cond_3

    .line 520
    const-string v2, "initializeImsOptionsService createOptionsService 1.0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_0:Lvendor/qti/ims/factory/V2_0/IImsFactory;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->getHidlOptionsListener()Lvendor/qti/ims/rcsuce/V1_0/IOptionsListener;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lvendor/qti/ims/factory/V2_0/IImsFactory;->createOptionsService(ILvendor/qti/ims/rcsuce/V1_0/IOptionsListener;Lvendor/qti/ims/factory/V2_0/IImsFactory$createOptionsServiceCallback;)V

    goto :goto_0

    .line 523
    :cond_3
    const-string v2, "initalizeImsOptionsService no factory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_0
    goto :goto_1

    .line 525
    :catch_0
    move-exception v2

    .line 526
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Unable to get to IOptionsService instance"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .end local v0    # "hidl_options_cb":Lvendor/qti/ims/factory/V2_0/IImsFactory$createOptionsServiceCallback;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    return-void
.end method

.method public declared-synchronized initializeImsPresenceService(I)V
    .locals 2
    .param p1, "slotId"    # I

    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 326
    monitor-exit p0

    return-void

    .line 328
    :cond_0
    :try_start_1
    const-string v0, "ImsRcsServiceMgr"

    const-string v1, "initializeImsPresenceService start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;

    if-eqz v0, :cond_1

    .line 330
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getHidlPresenceService_1_2(I)V

    goto :goto_0

    .line 331
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    :cond_1
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_1:Lvendor/qti/ims/factory/V2_1/IImsFactory;

    if-eqz v0, :cond_2

    .line 332
    const-string v0, "ImsRcsServiceMgr"

    const-string v1, "initializeImsPresenceService ImsFactory 2_2 not available, falling back to 2_1 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getHidlPresenceService_1_1(I)V

    goto :goto_0

    .line 334
    :cond_2
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_0:Lvendor/qti/ims/factory/V2_0/IImsFactory;

    if-eqz v0, :cond_3

    .line 335
    const-string v0, "ImsRcsServiceMgr"

    const-string v1, "initializeImsPresenceService ImsFactory 2_1 not available, falling back to 2_0 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getHidlPresenceService_1_0(I)V

    goto :goto_0

    .line 338
    :cond_3
    const-string v0, "ImsRcsServiceMgr"

    const-string v1, "initializeImsPresenceService no factory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    :goto_0
    monitor-exit p0

    return-void

    .line 322
    .end local p1    # "slotId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initializeRcsSipTransportService(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V
    .locals 2
    .param p1, "p"    # Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    monitor-enter p0

    .line 277
    if-eqz p1, :cond_2

    .line 279
    :try_start_0
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getSlotId()I

    move-result v0

    invoke-direct {p0, v0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getIsSipTransportInited(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 281
    const-string v0, "ImsRcsServiceMgrSipTransportService initializeSipTransportService slotId: "

    .line 282
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getSlotId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "ImsRcsServiceMgr"

    const-string v1, "SipTransportService reinitialize - mImsFactoryInstance is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getHidlRcsSipTransport_1_2(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V

    goto :goto_0

    .line 288
    .end local p0    # "this":Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    :cond_0
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_1:Lvendor/qti/ims/factory/V2_1/IImsFactory;

    if-eqz v0, :cond_1

    .line 290
    const-string v0, "ImsRcsServiceMgr"

    const-string v1, "SipTransportService reinitialize - mImsFactoryInstance_2_1 is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getHidlRcsSipTransport_1_1(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V

    goto :goto_0

    .line 293
    :cond_1
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_0:Lvendor/qti/ims/factory/V2_0/IImsFactory;

    if-eqz v0, :cond_2

    .line 295
    const-string v0, "ImsRcsServiceMgr"

    const-string v1, "createRcsSipTransportService: call for mImsFactoryInstance_2_0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getHidlRcsSipTransport_1_0(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 276
    .end local p1    # "p":Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 300
    .restart local p0    # "this":Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    .restart local p1    # "p":Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public reInitHalServices()V
    .locals 7

    .line 434
    const-string v0, "calling reInitHalServices"

    const-string v1, "ImsRcsServiceMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->REINTIALIZE_FLAG:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 436
    const-string v0, "REINTIALIZE_FLAG is 0"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {p0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->Initialize()Z

    .line 438
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsService;->getImsConfigService()[Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    move-result-object v0

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 439
    .local v5, "configImpl":Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;
    const-string v6, "configImpl call initwrapper"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {v5}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->initConfigWrapper()V

    .line 438
    .end local v5    # "configImpl":Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 442
    :cond_0
    const-string v0, "REINTIALIZE_FLAG set to 1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v0, 0x1

    iput v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->REINTIALIZE_FLAG:I

    .line 446
    :cond_1
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mSipTransportService:[Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 447
    .local v3, "p":Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;
    if-nez v3, :cond_2

    .line 448
    goto :goto_2

    .line 449
    :cond_2
    nop

    .line 450
    invoke-virtual {v3}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getSlotId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 449
    const-string v5, "ImsRcsServiceMgrSipTransportService reinitialize slotId: "

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0, v3}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->initializeRcsSipTransportService(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V

    .line 446
    .end local v3    # "p":Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 454
    :cond_3
    const/4 v0, 0x0

    .local v0, "slotId":I
    :goto_3
    sget v1, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    if-ge v0, v1, :cond_4

    .line 455
    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->initializeImsPresenceService(I)V

    .line 456
    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->initializeImsOptionsService(I)V

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 458
    .end local v0    # "slotId":I
    :cond_4
    return-void
.end method

.method public reinitializeOptionsService()V
    .locals 2

    .line 479
    const/4 v0, 0x0

    .local v0, "slotId":I
    :goto_0
    sget v1, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    if-ge v0, v1, :cond_1

    .line 480
    iget-object v1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 481
    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->initializeImsOptionsService(I)V

    .line 479
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    .end local v0    # "slotId":I
    :cond_1
    return-void
.end method

.method public reinitializePresenceService()V
    .locals 2

    .line 472
    const/4 v0, 0x0

    .local v0, "slotId":I
    :goto_0
    sget v1, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    if-ge v0, v1, :cond_1

    .line 473
    invoke-direct {p0, v0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getPresenceSvcReintFlag(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 474
    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->initializeImsPresenceService(I)V

    .line 472
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    .end local v0    # "slotId":I
    :cond_1
    return-void
.end method

.method public reinitializeSipTransportService()V
    .locals 5

    .line 462
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mSipTransportService:[Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 463
    .local v3, "p":Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;
    if-eqz v3, :cond_0

    .line 464
    invoke-virtual {v3}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getSlotId()I

    move-result v4

    invoke-direct {p0, v4}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getIsSipTransportInited(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 465
    invoke-virtual {p0, v3}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->initializeRcsSipTransportService(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V

    .line 462
    .end local v3    # "p":Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 469
    :cond_1
    return-void
.end method
