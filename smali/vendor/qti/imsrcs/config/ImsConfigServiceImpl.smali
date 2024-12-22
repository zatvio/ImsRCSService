.class public Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;
.super Landroid/telephony/ims/stub/ImsConfigImplBase;
.source "ImsConfigServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;,
        Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;,
        Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;,
        Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ConfigCbListener;,
        Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;,
        Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;,
        Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryInitQmiServiceCallback;,
        Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAcsCallback;
    }
.end annotation


# static fields
.field private static final INVALID_SLOT_ID:I = -0x1

.field private static final VERSION_CODE:Ljava/lang/String; = "client_version_code"

.field private static final VERSION_NAME:Ljava/lang/String; = "client_version_name"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field airPlaneModeHandler:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;

.field cb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ConfigCbListener;

.field private errorCode:I

.field private errorString:Ljava/lang/String;

.field private isDeviceUpgrade:Z

.field private isDmaChange:Z

.field private isRegForInd:Z

.field mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

.field private mBundle:Landroid/os/PersistableBundle;

.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field mConfigExec:Ljava/util/concurrent/Executor;

.field private mContext:Landroid/content/Context;

.field mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

.field private mPackageVersion:Ljava/lang/String;

.field private mSlotId:I

.field private mVersionCode:J

.field pm:Landroid/telephony/ims/ProvisioningManager;

.field private rcsCb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

.field rcsClientConfig:Landroid/telephony/ims/RcsClientConfiguration;

.field private rcsExec:Ljava/util/concurrent/Executor;

.field private uceCap:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

.field private uceCb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

.field private uceExec:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 125
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>()V

    .line 73
    const-string v0, "ImsConfigServiceImpl"

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->LOG_TAG:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->airPlaneModeHandler:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;

    .line 89
    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsClientConfig:Landroid/telephony/ims/RcsClientConfiguration;

    .line 90
    const/4 v1, 0x0

    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->isDmaChange:Z

    .line 93
    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->isDeviceUpgrade:Z

    .line 96
    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->uceCb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    .line 97
    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsCb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    .line 98
    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->uceCap:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 99
    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->isRegForInd:Z

    .line 126
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 129
    invoke-direct {p0, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>(Landroid/content/Context;)V

    .line 73
    const-string v0, "ImsConfigServiceImpl"

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->LOG_TAG:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->airPlaneModeHandler:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;

    .line 89
    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsClientConfig:Landroid/telephony/ims/RcsClientConfiguration;

    .line 90
    const/4 v1, 0x0

    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->isDmaChange:Z

    .line 93
    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->isDeviceUpgrade:Z

    .line 96
    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->uceCb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    .line 97
    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsCb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    .line 98
    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->uceCap:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 99
    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->isRegForInd:Z

    .line 130
    iput p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mSlotId:I

    .line 131
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mConfigExec:Ljava/util/concurrent/Executor;

    .line 132
    iput-object p2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mContext:Landroid/content/Context;

    .line 133
    invoke-static {p1}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->pm:Landroid/telephony/ims/ProvisioningManager;

    .line 134
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mBundle:Landroid/os/PersistableBundle;

    .line 135
    invoke-virtual {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->initConfigWrapper()V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 121
    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>(Landroid/content/Context;)V

    .line 73
    const-string v0, "ImsConfigServiceImpl"

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->LOG_TAG:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->airPlaneModeHandler:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;

    .line 89
    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsClientConfig:Landroid/telephony/ims/RcsClientConfiguration;

    .line 90
    const/4 v1, 0x0

    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->isDmaChange:Z

    .line 93
    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->isDeviceUpgrade:Z

    .line 96
    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->uceCb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    .line 97
    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsCb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    .line 98
    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->uceCap:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 99
    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->isRegForInd:Z

    .line 122
    return-void
.end method

.method static synthetic access$000(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    .line 71
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->errorString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    .line 71
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private clearClientUpgradeParams()V
    .locals 4

    .line 487
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mBundle:Landroid/os/PersistableBundle;

    const-string v1, "client_version_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mBundle:Landroid/os/PersistableBundle;

    const-string v1, "client_version_code"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 489
    return-void
.end method

.method private getAcsTriggerReason()I
    .locals 1

    .line 434
    sget-boolean v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    if-eqz v0, :cond_0

    .line 435
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->getAidlAcsTriggerReason()I

    move-result v0

    return v0

    .line 437
    :cond_0
    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->isDmaChange:Z

    if-eqz v0, :cond_1

    .line 438
    const/4 v0, 0x3

    .local v0, "reason":I
    goto :goto_0

    .line 439
    .end local v0    # "reason":I
    :cond_1
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->isClientUpgrade()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    const/4 v0, 0x4

    .restart local v0    # "reason":I
    goto :goto_0

    .line 441
    .end local v0    # "reason":I
    :cond_2
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->isFactoryResetEvt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 442
    const/4 v0, 0x5

    .restart local v0    # "reason":I
    goto :goto_0

    .line 444
    .end local v0    # "reason":I
    :cond_3
    const/4 v0, 0x1

    .line 446
    .restart local v0    # "reason":I
    :goto_0
    return v0
.end method

.method private getAidlAcsTriggerReason()I
    .locals 1

    .line 420
    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->isDmaChange:Z

    if-eqz v0, :cond_0

    .line 421
    const/4 v0, 0x3

    .local v0, "reason":I
    goto :goto_0

    .line 422
    .end local v0    # "reason":I
    :cond_0
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->isClientUpgrade()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    const/4 v0, 0x4

    .restart local v0    # "reason":I
    goto :goto_0

    .line 424
    .end local v0    # "reason":I
    :cond_1
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->isFactoryResetEvt()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    const/4 v0, 0x5

    .restart local v0    # "reason":I
    goto :goto_0

    .line 427
    .end local v0    # "reason":I
    :cond_2
    const/4 v0, 0x1

    .line 429
    .restart local v0    # "reason":I
    :goto_0
    return v0
.end method

.method private initAidlConfigWrapper()V
    .locals 4

    .line 158
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    const-string v1, "ImsConfigServiceImpl"

    if-eqz v0, :cond_1

    .line 159
    iget-object v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->cb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ConfigCbListener;

    invoke-virtual {v0, v2}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->setConfigCbListener(Lvendor/qti/imsrcs/config/ImsConfigCbListener;)V

    .line 160
    const-string v0, "initialized aidl configwrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;

    invoke-direct {v1, p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;)V

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->registerAutoConfig(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;)V

    .line 162
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;

    invoke-direct {v1, p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;)V

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->registerQmiServiceUp(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;)V

    .line 163
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->queryInitBootupRequests()V

    .line 165
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->uceCb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    if-eqz v0, :cond_0

    .line 166
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    iget-object v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->uceExec:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->uceCap:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-virtual {v1, v2, v3, v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->updateUceStatusOnModem(Ljava/util/concurrent/Executor;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsCb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    if-eqz v0, :cond_2

    .line 168
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    iget-object v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsExec:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->registerForSipStatusOnModem(Ljava/util/concurrent/Executor;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;)V

    goto :goto_0

    .line 171
    :cond_1
    const-string v0, "mAidlImsConfig null:initConfigWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_2
    :goto_0
    return-void
.end method

.method private initHidlConfigWrapper()V
    .locals 4

    .line 177
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    const-string v1, "ImsConfigServiceImpl"

    if-eqz v0, :cond_1

    .line 178
    iget-object v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->cb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ConfigCbListener;

    invoke-virtual {v0, v2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setConfigCbListener(Lvendor/qti/imsrcs/config/ImsConfigCbListener;)V

    .line 179
    const-string v0, "initialized hidl configwrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;

    invoke-direct {v1, p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;)V

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->registerAutoConfig(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;)V

    .line 181
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;

    invoke-direct {v1, p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;)V

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->registerQmiServiceUp(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;)V

    .line 182
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->queryInitBootupRequests()V

    .line 184
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->uceCb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    if-eqz v0, :cond_0

    .line 185
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    iget-object v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->uceExec:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->uceCap:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-virtual {v1, v2, v3, v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->updateUceStatusOnModem(Ljava/util/concurrent/Executor;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsCb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    if-eqz v0, :cond_2

    .line 187
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    iget-object v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsExec:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->registerForSipStatusOnModem(Ljava/util/concurrent/Executor;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;)V

    goto :goto_0

    .line 190
    :cond_1
    const-string v0, "mHidlImsConfig null:initConfigWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_2
    :goto_0
    return-void
.end method

.method private isClientConfigChange(Landroid/telephony/ims/RcsClientConfiguration;)Z
    .locals 5
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;

    .line 340
    const-string v0, "ImsConfigServiceImpl"

    const-string v1, "isClientConfigChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsClientConfig:Landroid/telephony/ims/RcsClientConfiguration;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getClientVendor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsClientConfig:Landroid/telephony/ims/RcsClientConfiguration;

    invoke-virtual {v1}, Landroid/telephony/ims/RcsClientConfiguration;->getClientVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 342
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getClientVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsClientConfig:Landroid/telephony/ims/RcsClientConfiguration;

    invoke-virtual {v1}, Landroid/telephony/ims/RcsClientConfiguration;->getClientVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 343
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getRcsProfile()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsClientConfig:Landroid/telephony/ims/RcsClientConfiguration;

    invoke-virtual {v1}, Landroid/telephony/ims/RcsClientConfiguration;->getRcsProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getRcsVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsClientConfig:Landroid/telephony/ims/RcsClientConfiguration;

    invoke-virtual {v1}, Landroid/telephony/ims/RcsClientConfiguration;->getRcsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 345
    :cond_1
    :goto_0
    new-instance v0, Landroid/telephony/ims/RcsClientConfiguration;

    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getRcsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getRcsProfile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getClientVendor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getClientVersion()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/ims/RcsClientConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsClientConfig:Landroid/telephony/ims/RcsClientConfiguration;

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method private isClientUpgrade()Z
    .locals 12

    .line 455
    const-string v0, "ImsConfigServiceImpl"

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mBundle:Landroid/os/PersistableBundle;

    const-string v2, "client_version_name"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "vName":Ljava/lang/String;
    iget-object v3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mBundle:Landroid/os/PersistableBundle;

    const-string v4, "client_version_code"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 457
    .local v7, "vCode":J
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    cmp-long v5, v7, v5

    if-nez v5, :cond_0

    goto :goto_3

    .line 463
    :cond_0
    const/4 v5, 0x0

    .line 465
    .local v5, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v6, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v9, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    move-object v5, v6

    .line 466
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 467
    .local v6, "version":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v9

    .line 469
    .local v9, "versionCode":J
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    cmp-long v11, v9, v7

    if-eqz v11, :cond_1

    goto :goto_0

    .end local v6    # "version":Ljava/lang/String;
    .end local v9    # "versionCode":J
    :cond_1
    goto :goto_1

    .line 470
    .restart local v6    # "version":Ljava/lang/String;
    .restart local v9    # "versionCode":J
    :cond_2
    :goto_0
    iget-object v11, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v11, v2, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v2, v4, v9, v10}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    const/4 v0, 0x1

    return v0

    .line 478
    .end local v6    # "version":Ljava/lang/String;
    .end local v9    # "versionCode":J
    :catch_0
    move-exception v2

    .line 479
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nullpointer ex due to: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 474
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 475
    .local v2, "nameNotFoundException":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 476
    const-string v4, "Exception for device upgrade"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .end local v2    # "nameNotFoundException":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    nop

    .line 482
    :goto_2
    return v3

    .line 459
    .end local v5    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_3
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mBundle:Landroid/os/PersistableBundle;

    const-string v5, ""

    invoke-virtual {v0, v2, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mBundle:Landroid/os/PersistableBundle;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 461
    return v3
.end method

.method private isFactoryResetEvt()Z
    .locals 1

    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method private setRcsModuleParams(Ljava/util/concurrent/Executor;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;)V
    .locals 0
    .param p1, "rcsExec"    # Ljava/util/concurrent/Executor;
    .param p2, "rcsCb"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    .line 361
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsExec:Ljava/util/concurrent/Executor;

    .line 362
    iput-object p2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsCb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    .line 363
    return-void
.end method

.method private setUceModuleParams(Ljava/util/concurrent/Executor;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;)V
    .locals 0
    .param p1, "uceExec"    # Ljava/util/concurrent/Executor;
    .param p2, "cap"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    .param p3, "uceCb"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    .line 354
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->uceExec:Ljava/util/concurrent/Executor;

    .line 355
    iput-object p2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->uceCap:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 356
    iput-object p3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->uceCb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    .line 357
    return-void
.end method


# virtual methods
.method public deInit()V
    .locals 2

    .line 196
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mConfigExec:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda7;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 492
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->airPlaneModeHandler:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;->unRegister()V

    .line 495
    :cond_0
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->clearClientUpgradeParams()V

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsClientConfig:Landroid/telephony/ims/RcsClientConfiguration;

    .line 497
    return-void
.end method

.method public getConfigInt(I)I
    .locals 1
    .param p1, "item"    # I

    .line 261
    invoke-super {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->getConfigInt(I)I

    move-result v0

    return v0
.end method

.method public getConfigString(I)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I

    .line 266
    invoke-super {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->getConfigString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;
    .locals 1

    .line 277
    invoke-super {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    return-object v0
.end method

.method public initConfigWrapper()V
    .locals 2

    .line 139
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mConfigExec:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda6;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method synthetic lambda$deInit$1$vendor-qti-imsrcs-config-ImsConfigServiceImpl()V
    .locals 2

    .line 198
    const-string v0, "ImsConfigServiceImpl"

    const-string v1, "deInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->deregisterForSettingsChange()V

    .line 201
    iput-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->cb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ConfigCbListener;

    .line 202
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->setConfigCbListener(Lvendor/qti/imsrcs/config/ImsConfigCbListener;)V

    .line 203
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->setAidlConfigService(Lvendor/qti/ims/configaidlservice/IConfigService;)V

    .line 204
    iput-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->deregisterForSettingsChange()V

    .line 208
    iput-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->cb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ConfigCbListener;

    .line 209
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setConfigCbListener(Lvendor/qti/imsrcs/config/ImsConfigCbListener;)V

    .line 210
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setHidlConfigService(Lvendor/qti/ims/configservice/V1_1/IConfigService;)V

    .line 211
    iput-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    .line 214
    :goto_0
    return-void
.end method

.method synthetic lambda$initConfigWrapper$0$vendor-qti-imsrcs-config-ImsConfigServiceImpl()V
    .locals 2

    .line 141
    new-instance v0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ConfigCbListener;

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mConfigExec:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ConfigCbListener;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->cb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ConfigCbListener;

    .line 142
    sget-boolean v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    move-result-object v0

    iget v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getConfigService(I)Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    .line 144
    if-eqz v0, :cond_1

    .line 145
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->initAidlConfigWrapper()V

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    move-result-object v0

    iget v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getConfigService(I)Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    .line 150
    if-eqz v0, :cond_1

    .line 151
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->initHidlConfigWrapper()V

    .line 153
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$notifyRcsAutoConfigurationReceived$2$vendor-qti-imsrcs-config-ImsConfigServiceImpl([BZ)V
    .locals 3
    .param p1, "config"    # [B
    .param p2, "isCompressed"    # Z

    .line 222
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    const-string v1, "notifyRcsAutoConfigurationReceived"

    const-string v2, "ImsConfigServiceImpl"

    if-eqz v0, :cond_0

    .line 223
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->setConfig([BZ)I

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    if-eqz v0, :cond_1

    .line 227
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-virtual {v0, p1, p2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setConfig([BZ)I

    goto :goto_0

    .line 231
    :cond_1
    const-string v0, "mHidlImsConfig null:notifyRcsAutoConfigurationReceived"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    return-void
.end method

.method synthetic lambda$onAirPlaneModeUpdate$7$vendor-qti-imsrcs-config-ImsConfigServiceImpl(Z)V
    .locals 2
    .param p1, "isAirplaneModeEnabled"    # Z

    .line 503
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsCb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;->onAirplaneModeChange(Z)V

    goto :goto_0

    .line 506
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAirPlaneModeUpdate rcs sip listener null, Airplane Mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :goto_0
    return-void
.end method

.method synthetic lambda$registerForSipTransportConfigUpdate$6$vendor-qti-imsrcs-config-ImsConfigServiceImpl(Ljava/util/concurrent/Executor;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;)V
    .locals 2
    .param p1, "sipExec"    # Ljava/util/concurrent/Executor;
    .param p2, "sipCb"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    .line 395
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    if-eqz v0, :cond_0

    .line 396
    const-string v0, "ImsConfigServiceImpl"

    const-string v1, "registerForSipTransportConfigUpdate called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    monitor-enter v0

    .line 398
    :try_start_0
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-virtual {v1, p1, p2}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->registerForSipStatusOnModem(Ljava/util/concurrent/Executor;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;)V

    .line 399
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 401
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    if-eqz v0, :cond_1

    .line 402
    const-string v0, "ImsConfigServiceImpl"

    const-string v1, "registerForSipTransportConfigUpdate called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    monitor-enter v0

    .line 404
    :try_start_1
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-virtual {v1, p1, p2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->registerForSipStatusOnModem(Ljava/util/concurrent/Executor;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;)V

    .line 405
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 407
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->airPlaneModeHandler:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;

    if-nez v0, :cond_1

    .line 408
    new-instance v0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p2}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;Landroid/content/Context;Ljava/util/concurrent/Executor;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;)V

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->airPlaneModeHandler:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;

    .line 409
    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;->register()V

    goto :goto_0

    .line 405
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 413
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$setRcsClientConfiguration$3$vendor-qti-imsrcs-config-ImsConfigServiceImpl(Landroid/telephony/ims/RcsClientConfiguration;)V
    .locals 2
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;

    .line 298
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    const-string v1, "ImsConfigServiceImpl"

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->sendRcsClientConfig(Landroid/telephony/ims/RcsClientConfiguration;)I

    .line 300
    const-string v0, "sendRcsClientConfig mAidlImsConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->sendRcsClientConfig(Landroid/telephony/ims/RcsClientConfiguration;)I

    .line 304
    const-string v0, "sendRcsClientConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_1
    const-string v0, "mHidlImsConfig null:setRcsClientConfiguration"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_0
    return-void
.end method

.method synthetic lambda$triggerAutoConfiguration$4$vendor-qti-imsrcs-config-ImsConfigServiceImpl(I)V
    .locals 2
    .param p1, "reasonCode"    # I

    .line 319
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->triggerAcsRequest(I)V

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->triggerAcsRequest(I)V

    goto :goto_0

    .line 326
    :cond_1
    const-string v0, "ImsConfigServiceImpl"

    const-string v1, "mHidlImsConfig null:triggerAutoConfiguration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_0
    return-void
.end method

.method synthetic lambda$updateUceCapability$5$vendor-qti-imsrcs-config-ImsConfigServiceImpl(Ljava/util/concurrent/Executor;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;)V
    .locals 2
    .param p1, "uceExec"    # Ljava/util/concurrent/Executor;
    .param p2, "cap"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    .param p3, "sipCb"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    .line 370
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    if-eqz v0, :cond_0

    .line 371
    const-string v0, "ImsConfigServiceImpl"

    const-string v1, "updateUceCapability called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    monitor-enter v0

    .line 374
    :try_start_0
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-virtual {v1, p1, p2, p3}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->updateUceStatusOnModem(Ljava/util/concurrent/Executor;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;)V

    .line 375
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 377
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    if-eqz v0, :cond_1

    .line 378
    const-string v0, "ImsConfigServiceImpl"

    const-string v1, "updateUceCapability called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    monitor-enter v0

    .line 381
    :try_start_1
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-virtual {v1, p1, p2, p3}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->updateUceStatusOnModem(Ljava/util/concurrent/Executor;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;)V

    .line 382
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 384
    :cond_1
    :goto_0
    return-void
.end method

.method public notifyRcsAutoConfigurationReceived([BZ)V
    .locals 2
    .param p1, "config"    # [B
    .param p2, "isCompressed"    # Z

    .line 220
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mConfigExec:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda3;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;[BZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method public notifyRcsAutoConfigurationRemoved()V
    .locals 1

    .line 242
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->clearConfigCache()V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->clearConfigCache()V

    .line 247
    :goto_0
    return-void
.end method

.method public onAirPlaneModeUpdate(Z)V
    .locals 2
    .param p1, "isAirplaneModeEnabled"    # Z

    .line 500
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->rcsExec:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 501
    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda4;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 512
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAirPlaneModeUpdate rcs executor null, Airplane mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_0
    return-void
.end method

.method public registerForSipTransportConfigUpdate(Ljava/util/concurrent/Executor;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;)V
    .locals 2
    .param p1, "sipExec"    # Ljava/util/concurrent/Executor;
    .param p2, "sipCb"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    .line 391
    invoke-direct {p0, p1, p2}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->setRcsModuleParams(Ljava/util/concurrent/Executor;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;)V

    .line 393
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mConfigExec:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda2;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;Ljava/util/concurrent/Executor;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 416
    return-void
.end method

.method public setConfig(II)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 251
    invoke-super {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->setConfig(II)I

    move-result v0

    return v0
.end method

.method public setConfig(ILjava/lang/String;)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 256
    invoke-super {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->setConfig(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    .locals 2
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;

    .line 292
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->isClientConfigChange(Landroid/telephony/ims/RcsClientConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->isDmaChange:Z

    .line 296
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mConfigExec:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda1;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;Landroid/telephony/ims/RcsClientConfiguration;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 311
    return-void
.end method

.method public triggerAutoConfiguration()V
    .locals 3

    .line 316
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->getAcsTriggerReason()I

    move-result v0

    .line 317
    .local v0, "reasonCode":I
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mConfigExec:Ljava/util/concurrent/Executor;

    new-instance v2, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda5;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 332
    return-void
.end method

.method public updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 271
    invoke-super {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V

    .line 272
    return-void
.end method

.method public updateUceCapability(Ljava/util/concurrent/Executor;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;)V
    .locals 2
    .param p1, "uceExec"    # Ljava/util/concurrent/Executor;
    .param p2, "cap"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    .param p3, "sipCb"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    .line 367
    invoke-direct {p0, p1, p2, p3}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->setUceModuleParams(Ljava/util/concurrent/Executor;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;)V

    .line 368
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mConfigExec:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda0;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;Ljava/util/concurrent/Executor;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 387
    return-void
.end method
