.class public Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;
.super Ljava/lang/Object;
.source "ImsConfigAidlServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private acsQueryListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;

.field private cacheRcsClientConfig:Landroid/telephony/ims/RcsClientConfiguration;

.field private cachedConfig:[B

.field private configCbListener:Lvendor/qti/imsrcs/config/ImsConfigCbListener;

.field private initQmiServicesQueryListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;

.field private isCachedConfigCompressed:Z

.field private isModemQmiUp:Z

.field private isRegForInd:Z

.field mAidlConfigListener:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;

.field mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

.field private mIsRcsEnabled:Z

.field private mUserAgentValue:Ljava/lang/String;

.field private mUserData:I

.field private rcsCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

.field private rcsEx:Ljava/util/concurrent/Executor;

.field private uceCaps:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

.field private uceCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

.field private uceEx:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    .line 53
    new-instance v1, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;

    invoke-direct {v1, p0, v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;-><init>(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$1;)V

    iput-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigListener:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;

    .line 55
    const-string v1, "ImsConfigAidlServiceWrapper"

    iput-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->LOG_TAG:Ljava/lang/String;

    .line 57
    const/16 v1, 0x4d2

    iput v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mUserData:I

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mIsRcsEnabled:Z

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->isRegForInd:Z

    .line 66
    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->isModemQmiUp:Z

    .line 71
    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->isCachedConfigCompressed:Z

    .line 72
    iput-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mUserAgentValue:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)I
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    .line 51
    iget v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mUserData:I

    return v0
.end method

.method static synthetic access$1000(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    .line 51
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->uceCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;)Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;
    .param p1, "x1"    # Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;

    .line 51
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getRcsCapabilities(Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;)Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    .line 51
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->configCbListener:Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    return-object v0
.end method

.method static synthetic access$302(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;
    .param p1, "x1"    # Z

    .line 51
    iput-boolean p1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->isModemQmiUp:Z

    return p1
.end method

.method static synthetic access$400(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    .line 51
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->initQmiServicesQueryListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;

    return-object v0
.end method

.method static synthetic access$500(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    .line 51
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getUceExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    .line 51
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->acsQueryListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;

    return-object v0
.end method

.method static synthetic access$700(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    .line 51
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getRcsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    .line 51
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mUserAgentValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mUserAgentValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    .line 51
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->rcsCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    return-object v0
.end method

.method private cacheUceCap(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .locals 0
    .param p1, "caps"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 550
    iput-object p1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->uceCaps:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 551
    return-void
.end method

.method private getRcsCapabilities(Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;)Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    .locals 4
    .param p1, "uceCapabilityInfo"    # Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;

    .line 596
    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    .line 597
    .local v0, "capabilities":Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    const/4 v1, 0x0

    .line 598
    .local v1, "uceCaps":I
    iget-boolean v2, p1, Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;->isOptionsEnabled:Z

    const-string v3, "ImsConfigAidlServiceWrapper"

    if-eqz v2, :cond_0

    .line 599
    or-int/lit8 v1, v1, 0x1

    .line 600
    const-string v2, "getRcsCapabilities isOptionsEnabled"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_0
    iget-boolean v2, p1, Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;->isPresenceEnabled:Z

    if-eqz v2, :cond_1

    .line 603
    or-int/lit8 v1, v1, 0x2

    .line 604
    const-string v2, "getRcsCapabilities isPresenceEnabled"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_1
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->addCapabilities(I)V

    .line 607
    return-object v0
.end method

.method private getRcsExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 91
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->rcsEx:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private getUceExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 87
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->uceEx:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private sendConfigSettings(ILvendor/qti/ims/configaidlservice/SettingsValues;)I
    .locals 6
    .param p1, "id"    # I
    .param p2, "values"    # Lvendor/qti/ims/configaidlservice/SettingsValues;

    .line 676
    const-string v0, "ImsConfigAidlServiceWrapper"

    const/4 v1, 0x3

    .line 677
    .local v1, "status":I
    new-instance v2, Lvendor/qti/ims/configaidlservice/SettingsData;

    invoke-direct {v2}, Lvendor/qti/ims/configaidlservice/SettingsData;-><init>()V

    .line 678
    .local v2, "settingsData":Lvendor/qti/ims/configaidlservice/SettingsData;
    new-instance v3, Lvendor/qti/ims/configaidlservice/SettingsValues;

    invoke-direct {v3}, Lvendor/qti/ims/configaidlservice/SettingsValues;-><init>()V

    .line 679
    .local v3, "valuesList":Lvendor/qti/ims/configaidlservice/SettingsValues;
    iget-object v4, p2, Lvendor/qti/ims/configaidlservice/SettingsValues;->intData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeInt;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 681
    new-array v4, v5, [Lvendor/qti/ims/configaidlservice/KeyValuePairTypeInt;

    iput-object v4, v3, Lvendor/qti/ims/configaidlservice/SettingsValues;->intData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeInt;

    goto :goto_0

    .line 683
    :cond_0
    iget-object v4, p2, Lvendor/qti/ims/configaidlservice/SettingsValues;->intData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeInt;

    invoke-virtual {v4}, [Lvendor/qti/ims/configaidlservice/KeyValuePairTypeInt;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lvendor/qti/ims/configaidlservice/KeyValuePairTypeInt;

    iput-object v4, v3, Lvendor/qti/ims/configaidlservice/SettingsValues;->intData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeInt;

    .line 685
    :goto_0
    iget-object v4, p2, Lvendor/qti/ims/configaidlservice/SettingsValues;->stringData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;

    if-nez v4, :cond_1

    .line 686
    new-array v4, v5, [Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;

    iput-object v4, v3, Lvendor/qti/ims/configaidlservice/SettingsValues;->stringData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;

    goto :goto_1

    .line 688
    :cond_1
    iget-object v4, p2, Lvendor/qti/ims/configaidlservice/SettingsValues;->stringData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;

    invoke-virtual {v4}, [Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;

    iput-object v4, v3, Lvendor/qti/ims/configaidlservice/SettingsValues;->stringData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;

    .line 691
    :goto_1
    iget-object v4, p2, Lvendor/qti/ims/configaidlservice/SettingsValues;->boolData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;

    if-nez v4, :cond_2

    .line 692
    new-array v4, v5, [Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;

    iput-object v4, v3, Lvendor/qti/ims/configaidlservice/SettingsValues;->boolData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;

    goto :goto_2

    .line 694
    :cond_2
    iget-object v4, p2, Lvendor/qti/ims/configaidlservice/SettingsValues;->boolData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;

    invoke-virtual {v4}, [Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;

    iput-object v4, v3, Lvendor/qti/ims/configaidlservice/SettingsValues;->boolData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;

    .line 697
    :goto_2
    iput-object v3, v2, Lvendor/qti/ims/configaidlservice/SettingsData;->settingsValues:Lvendor/qti/ims/configaidlservice/SettingsValues;

    .line 698
    iput p1, v2, Lvendor/qti/ims/configaidlservice/SettingsData;->settingsId:I

    .line 701
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calling sendConfigSettings setsettingsValue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v4, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    iget v5, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mUserData:I

    invoke-interface {v4, v2, v5}, Lvendor/qti/ims/configaidlservice/IConfigService;->setSettingsValue(Lvendor/qti/ims/configaidlservice/SettingsData;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 705
    goto :goto_3

    .line 703
    :catch_0
    move-exception v4

    .line 704
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_3
    return v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 101
    invoke-virtual {p0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->clearConfigCache()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mUserAgentValue:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->configCbListener:Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->handleConfigWrapperCleanup()V

    .line 106
    :cond_0
    return-void
.end method

.method public clearConfigCache()V
    .locals 1

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->cachedConfig:[B

    .line 96
    iput-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->cacheRcsClientConfig:Landroid/telephony/ims/RcsClientConfiguration;

    .line 97
    iput-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->uceCaps:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 98
    return-void
.end method

.method public deregisterForSettingsChange()V
    .locals 3

    .line 737
    const-string v0, "ImsConfigAidlServiceWrapper"

    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    if-eqz v1, :cond_1

    .line 739
    :try_start_0
    iget-boolean v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->isModemQmiUp:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->isRegForInd:Z

    if-eqz v1, :cond_0

    .line 740
    const-string v1, "deregisterForSettingsChange "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    iget v2, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mUserData:I

    invoke-interface {v1, v2}, Lvendor/qti/ims/configaidlservice/IConfigService;->deregisterForSettingsChange(I)I

    .line 742
    const/4 v1, 0x0

    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->isRegForInd:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    :cond_0
    goto :goto_0

    .line 744
    :catch_0
    move-exception v1

    .line 745
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public getRcsStatus(Z)V
    .locals 5
    .param p1, "isRcsEnabled"    # Z

    .line 613
    const-string v0, "ImsConfigAidlServiceWrapper"

    new-instance v1, Lvendor/qti/ims/configaidlservice/RcsStatus;

    invoke-direct {v1}, Lvendor/qti/ims/configaidlservice/RcsStatus;-><init>()V

    .line 614
    .local v1, "rcsStatus":Lvendor/qti/ims/configaidlservice/RcsStatus;
    iput-boolean p1, v1, Lvendor/qti/ims/configaidlservice/RcsStatus;->isRcsEnabled:Z

    .line 616
    iget-object v2, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    if-eqz v2, :cond_3

    .line 619
    :try_start_0
    invoke-interface {v2, v1}, Lvendor/qti/ims/configaidlservice/IConfigService;->getRcsServiceStatus(Lvendor/qti/ims/configaidlservice/RcsStatus;)I

    move-result v2

    .line 620
    .local v2, "status":I
    if-nez v2, :cond_2

    .line 622
    iget-boolean v3, v1, Lvendor/qti/ims/configaidlservice/RcsStatus;->isRcsEnabled:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->acsQueryListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;

    if-eqz v3, :cond_0

    .line 623
    invoke-virtual {v3}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;->onRcsInit()V

    .line 625
    :cond_0
    iget-boolean v3, v1, Lvendor/qti/ims/configaidlservice/RcsStatus;->isRcsEnabled:Z

    if-ne v3, p1, :cond_1

    .line 626
    iget-object v3, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->rcsEx:Ljava/util/concurrent/Executor;

    new-instance v4, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda3;-><init>(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;Lvendor/qti/ims/configaidlservice/RcsStatus;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 636
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling setRcsStatus status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->setRcsStatus(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 639
    :cond_2
    nop

    .line 644
    .end local v2    # "status":I
    :goto_0
    goto :goto_1

    .line 642
    :catch_0
    move-exception v2

    .line 643
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Unable to fetch RCS Service Status"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    return-void
.end method

.method public getSettingsValue(I)V
    .locals 3
    .param p1, "settingsId"    # I

    .line 795
    const-string v0, "ImsConfigAidlServiceWrapper"

    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    if-eqz v1, :cond_0

    .line 797
    :try_start_0
    const-string v1, "calling getSettingsValue "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    iget v2, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mUserData:I

    invoke-interface {v1, p1, v2}, Lvendor/qti/ims/configaidlservice/IConfigService;->getSettingsValue(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    goto :goto_0

    .line 799
    :catch_0
    move-exception v1

    .line 800
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public getUceStatus(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .locals 8
    .param p1, "caps"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 554
    new-instance v0, Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;

    invoke-direct {v0}, Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;-><init>()V

    .line 555
    .local v0, "uceCapInfo":Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;
    const/4 v1, 0x3

    .line 556
    .local v1, "status":I
    iget-object v2, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    const-string v3, "ImsConfigAidlServiceWrapper"

    if-nez v2, :cond_0

    .line 557
    const-string v2, "mAidlConfigService is null"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    iget-object v2, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    if-eqz v2, :cond_3

    .line 560
    :try_start_0
    const-string v2, "starting to query UCE Status"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v2, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    invoke-interface {v2, v0}, Lvendor/qti/ims/configaidlservice/IConfigService;->getUceStatus(Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;)I

    move-result v2

    move v1, v2

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IConfigService.getUceStatusCallback:  received rcsStatus: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    if-nez v1, :cond_2

    .line 566
    invoke-direct {p0, v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getRcsCapabilities(Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;)Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    move-result-object v2

    .line 567
    .local v2, "localCaps":Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cap from UCE module presence : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " options: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {p1, v5}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v4

    invoke-virtual {v2, v5}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v7

    if-ne v4, v7, :cond_1

    .line 569
    invoke-virtual {p1, v6}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v4

    invoke-virtual {v2, v6}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v7

    if-ne v4, v7, :cond_1

    .line 570
    const-string v4, "calling onUceConfigStatusReceived"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v4, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->uceEx:Ljava/util/concurrent/Executor;

    new-instance v5, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v2}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda2;-><init>(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 578
    :cond_1
    const-string v4, "calling setUceStatus"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {p1, v5}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v4

    invoke-virtual {p1, v6}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v5

    invoke-virtual {p0, v4, v5}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->setUceStatus(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    .end local v2    # "localCaps":Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    :cond_2
    :goto_0
    nop

    .line 587
    goto :goto_1

    .line 585
    :catch_0
    move-exception v2

    .line 586
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "Unable to query UCE Status"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    return-void
.end method

.method public getUserAgent(I)V
    .locals 3
    .param p1, "apptype"    # I

    .line 362
    const-string v0, "ImsConfigAidlServiceWrapper"

    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    if-eqz v1, :cond_0

    .line 364
    :try_start_0
    const-string v1, "calling getUserAgent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    invoke-interface {v1, p1}, Lvendor/qti/ims/configaidlservice/IConfigService;->getUserAgent(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    goto :goto_0

    .line 366
    :catch_0
    move-exception v1

    .line 367
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public getaidlConfigListener()Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;
    .locals 1

    .line 109
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigListener:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;

    return-object v0
.end method

.method synthetic lambda$getRcsStatus$4$vendor-qti-imsrcs-config-aidl-ImsConfigAidlServiceWrapper(Lvendor/qti/ims/configaidlservice/RcsStatus;)V
    .locals 2
    .param p1, "rcsStatus"    # Lvendor/qti/ims/configaidlservice/RcsStatus;

    .line 628
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->rcsCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    if-eqz v0, :cond_0

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling onRcsStatusReceived status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lvendor/qti/ims/configaidlservice/RcsStatus;->isRcsEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigAidlServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->rcsCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    iget-boolean v1, p1, Lvendor/qti/ims/configaidlservice/RcsStatus;->isRcsEnabled:Z

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;->onRcsStatusReceived(Z)V

    .line 632
    :cond_0
    return-void
.end method

.method synthetic lambda$getUceStatus$3$vendor-qti-imsrcs-config-aidl-ImsConfigAidlServiceWrapper(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .locals 1
    .param p1, "localCaps"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 572
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->uceCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;->onUceConfigStatusReceived(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    .line 574
    :cond_0
    return-void
.end method

.method synthetic lambda$notifyRcsStatus$1$vendor-qti-imsrcs-config-aidl-ImsConfigAidlServiceWrapper(Z)V
    .locals 2
    .param p1, "rcsstatus"    # Z

    .line 283
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->rcsCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;->onRcsStatusReceived(Z)V

    goto :goto_0

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRcsStatus received rcsStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 287
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    const-string v1, "ImsConfigAidlServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_0
    return-void
.end method

.method synthetic lambda$notifyUceStatus$0$vendor-qti-imsrcs-config-aidl-ImsConfigAidlServiceWrapper(Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;)V
    .locals 2
    .param p1, "uceCapabilityInfo"    # Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;

    .line 246
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->uceCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getRcsCapabilities(Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;)Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;->onUceConfigStatusReceived(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    goto :goto_0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUceConfigStatusReceived received presenceStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;->isPresenceEnabled:Z

    .line 250
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "optionsStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;->isOptionsEnabled:Z

    .line 251
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    const-string v1, "ImsConfigAidlServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_0
    return-void
.end method

.method synthetic lambda$notifyUserAgentStatusToSipTransport$2$vendor-qti-imsrcs-config-aidl-ImsConfigAidlServiceWrapper()V
    .locals 2

    .line 318
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->rcsCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    if-eqz v0, :cond_0

    .line 319
    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mUserAgentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;->onUserAgentStringReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyUserAgentStatusToSipTransport received mUserAgentValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mUserAgentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigAidlServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_0
    return-void
.end method

.method public notifyRcsStatus(Lvendor/qti/ims/configaidlservice/SettingsValues;)V
    .locals 6
    .param p1, "values"    # Lvendor/qti/ims/configaidlservice/SettingsValues;

    .line 263
    const/4 v0, 0x0

    .line 265
    .local v0, "isRcsEnabled":Z
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lvendor/qti/ims/configaidlservice/SettingsValues;->boolData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 266
    .local v1, "boolList":Ljava/util/List;, "Ljava/util/List<Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;

    .line 267
    .local v3, "kvBool":Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;
    iget v4, v3, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;->key:I

    const/16 v5, 0x19e

    if-ne v4, v5, :cond_0

    .line 268
    iget-boolean v0, v3, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;->value:Z

    .line 269
    goto :goto_1

    .line 271
    .end local v3    # "kvBool":Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;
    :cond_0
    goto :goto_0

    .line 273
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mIsRcsEnabled:Z

    const-string v3, "ImsConfigAidlServiceWrapper"

    if-eq v0, v2, :cond_2

    .line 274
    const-string v2, "UI and modem NV mismatch for RcsMessagingEnabled, so set value as per UI"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-boolean v2, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mIsRcsEnabled:Z

    invoke-virtual {p0, v2}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->setRcsStatus(Z)V

    .line 276
    return-void

    .line 279
    :cond_2
    move v2, v0

    .line 280
    .local v2, "rcsstatus":Z
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getRcsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 281
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getRcsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda0;-><init>(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;Z)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 291
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRcsExecutor null notifyRcsStatus received rcsStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 292
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 291
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_2
    return-void
.end method

.method public notifyUceStatus(Lvendor/qti/ims/configaidlservice/SettingsValues;)V
    .locals 7
    .param p1, "values"    # Lvendor/qti/ims/configaidlservice/SettingsValues;

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "isPresenceEnabled":Z
    const/4 v1, 0x0

    .line 231
    .local v1, "isOptionsEnabled":Z
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lvendor/qti/ims/configaidlservice/SettingsValues;->boolData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 232
    .local v2, "boolList":Ljava/util/List;, "Ljava/util/List<Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;

    .line 233
    .local v4, "kvBool":Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;
    iget v5, v4, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;->key:I

    const/16 v6, 0x19b

    if-ne v5, v6, :cond_0

    .line 234
    iget-boolean v0, v4, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;->value:Z

    .line 235
    :cond_0
    iget v5, v4, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;->key:I

    const/16 v6, 0x1a6

    if-ne v5, v6, :cond_1

    .line 236
    iget-boolean v1, v4, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;->value:Z

    .line 237
    .end local v4    # "kvBool":Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;
    :cond_1
    goto :goto_0

    .line 239
    :cond_2
    new-instance v3, Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;

    invoke-direct {v3}, Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;-><init>()V

    .line 240
    .local v3, "uceCapabilityInfo":Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;
    iput-boolean v0, v3, Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;->isPresenceEnabled:Z

    .line 241
    iput-boolean v1, v3, Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;->isOptionsEnabled:Z

    .line 243
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getUceExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 244
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getUceExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v3}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda1;-><init>(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 255
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUceExecutor null onUceConfigStatusReceived received presenceStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v3, Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;->isPresenceEnabled:Z

    .line 256
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "optionsStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v3, Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;->isOptionsEnabled:Z

    .line 257
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 255
    const-string v5, "ImsConfigAidlServiceWrapper"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_1
    return-void
.end method

.method public notifyUserAgentStatusToSipTransport()V
    .locals 2

    .line 313
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mUserAgentValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 314
    return-void

    .line 315
    :cond_0
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getRcsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 316
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getRcsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda4;-><init>(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 326
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRcsExecutor null notifyUserAgentStatusToSipTransport received mUserAgentValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mUserAgentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigAidlServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_0
    return-void
.end method

.method public queryAcsConfiguration()V
    .locals 3

    .line 725
    const-string v0, "ImsConfigAidlServiceWrapper"

    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    if-eqz v1, :cond_0

    .line 727
    :try_start_0
    const-string v1, "calling getAcsConfiguration "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    iget v2, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mUserData:I

    invoke-interface {v1, v2}, Lvendor/qti/ims/configaidlservice/IConfigService;->getAcsConfiguration(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    goto :goto_0

    .line 729
    :catch_0
    move-exception v1

    .line 730
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryInitBootupRequests()V
    .locals 2

    .line 788
    const-string v0, "ImsConfigAidlServiceWrapper"

    const-string v1, "queryInitBootupRequests"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mUserAgentValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 790
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getSettingsValue(I)V

    .line 792
    :cond_0
    return-void
.end method

.method public queryInitCachedRequests()V
    .locals 3

    .line 765
    const-string v0, "queryInitCachedRequests"

    const-string v1, "ImsConfigAidlServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isModemQmiUp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->isModemQmiUp:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-virtual {p0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->registerForSettingsChange()V

    .line 770
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->cachedConfig:[B

    if-eqz v0, :cond_0

    .line 771
    iget-boolean v2, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->isCachedConfigCompressed:Z

    invoke-virtual {p0, v0, v2}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->setConfig([BZ)I

    .line 773
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->uceCaps:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    if-eqz v0, :cond_1

    .line 774
    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getUceStatus(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    .line 776
    :cond_1
    const-string v0, "calling setRcsStatus "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mIsRcsEnabled:Z

    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getRcsStatus(Z)V

    .line 780
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->cacheRcsClientConfig:Landroid/telephony/ims/RcsClientConfiguration;

    if-eqz v0, :cond_2

    .line 781
    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->sendRcsClientConfig(Landroid/telephony/ims/RcsClientConfiguration;)I

    .line 783
    :cond_2
    invoke-virtual {p0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->queryInitBootupRequests()V

    .line 784
    return-void
.end method

.method public registerAutoConfig(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;)V
    .locals 0
    .param p1, "acsQueryListener"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;

    .line 751
    iput-object p1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->acsQueryListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;

    .line 752
    return-void
.end method

.method public registerForSettingsChange()V
    .locals 3

    .line 711
    const-string v0, "ImsConfigAidlServiceWrapper"

    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    if-eqz v1, :cond_1

    .line 713
    :try_start_0
    iget-boolean v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->isModemQmiUp:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->isRegForInd:Z

    if-nez v1, :cond_0

    .line 714
    const-string v1, "registerForSettingsChange "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    iget v2, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mUserData:I

    invoke-interface {v1, v2}, Lvendor/qti/ims/configaidlservice/IConfigService;->registerForSettingsChange(I)I

    .line 716
    const/4 v1, 0x1

    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->isRegForInd:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :cond_0
    goto :goto_0

    .line 718
    :catch_0
    move-exception v1

    .line 719
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public registerForSipStatusOnModem(Ljava/util/concurrent/Executor;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;)V
    .locals 1
    .param p1, "sipExec"    # Ljava/util/concurrent/Executor;
    .param p2, "sipCb"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    .line 533
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->setRcsExecutor(Ljava/util/concurrent/Executor;)V

    .line 534
    invoke-virtual {p0, p2}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->setRcsCbListener(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;)V

    .line 535
    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->isModemQmiUp:Z

    if-eqz v0, :cond_0

    .line 536
    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mIsRcsEnabled:Z

    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getRcsStatus(Z)V

    .line 538
    :cond_0
    invoke-virtual {p0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->notifyUserAgentStatusToSipTransport()V

    .line 539
    return-void
.end method

.method public registerQmiServiceUp(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;)V
    .locals 2
    .param p1, "initQmiServicesQueryListener"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;

    .line 755
    iput-object p1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->initQmiServicesQueryListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;

    .line 757
    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->isModemQmiUp:Z

    if-nez v0, :cond_0

    .line 758
    const-string v0, "ImsConfigAidlServiceWrapper"

    const-string v1, "registerQmiServiceUp done, wait for qmiService up as currently modem is not up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    return-void

    .line 761
    :cond_0
    invoke-virtual {p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;->onQmiServiceUp()V

    .line 762
    return-void
.end method

.method public sendRcsClientConfig(Landroid/telephony/ims/RcsClientConfiguration;)I
    .locals 17
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;

    .line 122
    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 123
    .local v1, "isRcsEnabled":Z
    move-object/from16 v2, p1

    iput-object v2, v0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->cacheRcsClientConfig:Landroid/telephony/ims/RcsClientConfiguration;

    .line 124
    const/4 v3, -0x1

    .line 125
    .local v3, "status":I
    iget-boolean v4, v0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->isModemQmiUp:Z

    if-nez v4, :cond_0

    .line 126
    return v3

    .line 127
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v4, "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v5, "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/configaidlservice/KeyValuePairTypeInt;>;"
    const-string v6, "sendRcsClientConfig rcvd client config values"

    const-string v7, "ImsConfigAidlServiceWrapper"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v6, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeInt;

    invoke-direct {v6}, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeInt;-><init>()V

    .line 132
    .local v6, "kvInt":Lvendor/qti/ims/configaidlservice/KeyValuePairTypeInt;
    const/16 v8, 0x12c

    iput v8, v6, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeInt;->key:I

    .line 133
    const-wide/16 v8, 0x1

    iput-wide v8, v6, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeInt;->value:J

    .line 134
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendRcsClientConfig: DEFAULT_SMS_APP_KEY: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v6, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeInt;->value:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v8, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;

    invoke-direct {v8}, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;-><init>()V

    .line 138
    .local v8, "kvStr":Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;
    const/16 v9, 0x135

    iput v9, v8, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->key:I

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ims/RcsClientConfiguration;->getRcsVersion()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->value:Ljava/lang/String;

    .line 140
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendRcsClientConfig: RCS_VERSION_KEY: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->value:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v9, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;

    invoke-direct {v9}, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;-><init>()V

    .line 144
    .local v9, "kvStr1":Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;
    const/16 v10, 0x138

    iput v10, v9, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->key:I

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ims/RcsClientConfiguration;->getRcsProfile()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->value:Ljava/lang/String;

    .line 146
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendRcsClientConfig: RCS_PROFILE_KEY: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v9, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->value:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v10, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;

    invoke-direct {v10}, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;-><init>()V

    .line 150
    .local v10, "kvStr2":Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;
    const/16 v11, 0x130

    iput v11, v10, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->key:I

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ims/RcsClientConfiguration;->getClientVendor()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->value:Ljava/lang/String;

    .line 152
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sendRcsClientConfig: CLIENT_VENDOR_KEY: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v10, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->value:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v11, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;

    invoke-direct {v11}, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;-><init>()V

    .line 156
    .local v11, "kvStr3":Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;
    const/16 v12, 0x131

    iput v12, v11, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->key:I

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ims/RcsClientConfiguration;->getClientVersion()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->value:Ljava/lang/String;

    .line 158
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendRcsClientConfig: CLIENT_VERSION_KEY: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v11, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->value:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v12, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;

    invoke-direct {v12}, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;-><init>()V

    .line 162
    .local v12, "kvStr4":Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;
    const/16 v13, 0x132

    iput v13, v12, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->key:I

    .line 163
    sget-object v13, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v13, v12, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->value:Ljava/lang/String;

    .line 164
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sendRcsClientConfig: TERMINAL_VENDOR_KEY: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->value:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v13, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;

    invoke-direct {v13}, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;-><init>()V

    .line 168
    .local v13, "kvStr5":Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;
    const/16 v14, 0x133

    iput v14, v13, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->key:I

    .line 169
    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v14, v13, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->value:Ljava/lang/String;

    .line 170
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sendRcsClientConfig: TERMINAL_MODEL_KEY: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v13, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->value:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v14, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;

    invoke-direct {v14}, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;-><init>()V

    .line 175
    .local v14, "kvStr6":Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;
    const/16 v15, 0x134

    iput v15, v14, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->key:I

    .line 176
    sget-object v15, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v15, v14, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->value:Ljava/lang/String;

    .line 177
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v1

    .end local v1    # "isRcsEnabled":Z
    .local v16, "isRcsEnabled":Z
    const-string v1, "sendRcsClientConfig: TERMINAL_SW_VERSION_KEY: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v15, v14, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->value:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ims/RcsClientConfiguration;->isRcsEnabledByUser()Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mIsRcsEnabled:Z

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sendRcsClientConfig received Client config: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v15, v0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mIsRcsEnabled:Z

    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-boolean v1, v0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mIsRcsEnabled:Z

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getRcsStatus(Z)V

    .line 191
    iget-object v1, v0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    if-eqz v1, :cond_1

    .line 192
    new-instance v1, Lvendor/qti/ims/configaidlservice/SettingsValues;

    invoke-direct {v1}, Lvendor/qti/ims/configaidlservice/SettingsValues;-><init>()V

    .line 193
    .local v1, "values":Lvendor/qti/ims/configaidlservice/SettingsValues;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;

    iput-object v15, v1, Lvendor/qti/ims/configaidlservice/SettingsValues;->stringData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;

    .line 194
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Lvendor/qti/ims/configaidlservice/KeyValuePairTypeInt;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lvendor/qti/ims/configaidlservice/KeyValuePairTypeInt;

    iput-object v15, v1, Lvendor/qti/ims/configaidlservice/SettingsValues;->intData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeInt;

    .line 195
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calling sendConfigSettings "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v15, v1, Lvendor/qti/ims/configaidlservice/SettingsValues;->stringData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;

    array-length v15, v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->sendConfigSettings(ILvendor/qti/ims/configaidlservice/SettingsValues;)I

    move-result v3

    .line 197
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getUserAgent(I)V

    .line 199
    .end local v1    # "values":Lvendor/qti/ims/configaidlservice/SettingsValues;
    :cond_1
    return v3
.end method

.method public setAidlConfigService(Lvendor/qti/ims/configaidlservice/IConfigService;)V
    .locals 0
    .param p1, "s"    # Lvendor/qti/ims/configaidlservice/IConfigService;

    .line 113
    iput-object p1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    .line 114
    return-void
.end method

.method public setConfig([BZ)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "isCompressed"    # Z

    .line 653
    const-string v0, "ImsConfigAidlServiceWrapper"

    new-instance v1, Lvendor/qti/ims/configaidlservice/ConfigData;

    invoke-direct {v1}, Lvendor/qti/ims/configaidlservice/ConfigData;-><init>()V

    .line 654
    .local v1, "configHidlData":Lvendor/qti/ims/configaidlservice/ConfigData;
    const/4 v2, 0x3

    .line 655
    .local v2, "status":I
    iput-boolean p2, v1, Lvendor/qti/ims/configaidlservice/ConfigData;->isCompressed:Z

    .line 656
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iput-object v3, v1, Lvendor/qti/ims/configaidlservice/ConfigData;->config:[B

    .line 658
    iget-object v3, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->cachedConfig:[B

    if-nez v3, :cond_0

    .line 659
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iput-object v3, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->cachedConfig:[B

    .line 660
    iput-boolean p2, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->isCachedConfigCompressed:Z

    .line 663
    :cond_0
    iget-object v3, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    if-eqz v3, :cond_1

    .line 665
    :try_start_0
    const-string v3, "calling setconfig"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v3, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    const/16 v4, 0x162e

    invoke-interface {v3, v1, v4}, Lvendor/qti/ims/configaidlservice/IConfigService;->setConfig(Lvendor/qti/ims/configaidlservice/ConfigData;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 670
    goto :goto_0

    .line 668
    :catch_0
    move-exception v3

    .line 669
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return v2
.end method

.method public setConfigCbListener(Lvendor/qti/imsrcs/config/ImsConfigCbListener;)V
    .locals 0
    .param p1, "cb"    # Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    .line 75
    iput-object p1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->configCbListener:Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    .line 76
    return-void
.end method

.method public setRcsCbListener(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;)V
    .locals 0
    .param p1, "l"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    .line 649
    iput-object p1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->rcsCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    .line 650
    return-void
.end method

.method public setRcsExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "ex"    # Ljava/util/concurrent/Executor;

    .line 83
    iput-object p1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->rcsEx:Ljava/util/concurrent/Executor;

    .line 84
    return-void
.end method

.method public setRcsStatus(Z)V
    .locals 5
    .param p1, "isRcsEnabled"    # Z

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v0, "boolList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;>;"
    new-instance v1, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;

    invoke-direct {v1}, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;-><init>()V

    .line 338
    .local v1, "kvBool":Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;
    const/16 v2, 0x19e

    iput v2, v1, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;->key:I

    .line 339
    iput-boolean p1, v1, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;->value:Z

    .line 340
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v2, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    if-eqz v2, :cond_0

    .line 343
    new-instance v2, Lvendor/qti/ims/configaidlservice/SettingsValues;

    invoke-direct {v2}, Lvendor/qti/ims/configaidlservice/SettingsValues;-><init>()V

    .line 344
    .local v2, "v":Lvendor/qti/ims/configaidlservice/SettingsValues;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;

    iput-object v3, v2, Lvendor/qti/ims/configaidlservice/SettingsValues;->boolData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;

    .line 345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRcsStatus settingsvalues booldata length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lvendor/qti/ims/configaidlservice/SettingsValues;->boolData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsConfigAidlServiceWrapper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v3, 0x3

    invoke-direct {p0, v3, v2}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->sendConfigSettings(ILvendor/qti/ims/configaidlservice/SettingsValues;)I

    .line 348
    .end local v2    # "v":Lvendor/qti/ims/configaidlservice/SettingsValues;
    :cond_0
    return-void
.end method

.method public setSmsVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # Ljava/lang/String;

    .line 373
    const-string v0, "ImsConfigAidlServiceWrapper"

    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    if-eqz v1, :cond_0

    .line 375
    :try_start_0
    const-string v1, "calling setSmsVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    invoke-interface {v1, p1}, Lvendor/qti/ims/configaidlservice/IConfigService;->setSmsVersion(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    goto :goto_0

    .line 377
    :catch_0
    move-exception v1

    .line 378
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setUceCbListener(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;)V
    .locals 0
    .param p1, "l"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    .line 592
    iput-object p1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->uceCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    .line 593
    return-void
.end method

.method public setUceExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "ex"    # Ljava/util/concurrent/Executor;

    .line 79
    iput-object p1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->uceEx:Ljava/util/concurrent/Executor;

    .line 80
    return-void
.end method

.method public setUceStatus(ZZ)V
    .locals 5
    .param p1, "isPresenceEnabled"    # Z
    .param p2, "isOptionsEnabled"    # Z

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v0, "boolList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;>;"
    new-instance v1, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;

    invoke-direct {v1}, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;-><init>()V

    .line 212
    .local v1, "kvBool":Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;
    const/16 v2, 0x19b

    iput v2, v1, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;->key:I

    .line 213
    iput-boolean p1, v1, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;->value:Z

    .line 214
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v2, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;

    invoke-direct {v2}, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;-><init>()V

    .line 216
    .local v2, "kvBoolOpt":Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;
    const/16 v3, 0x1a6

    iput v3, v2, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;->key:I

    .line 217
    iput-boolean p2, v2, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;->value:Z

    .line 218
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v3, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    if-eqz v3, :cond_0

    .line 220
    new-instance v3, Lvendor/qti/ims/configaidlservice/SettingsValues;

    invoke-direct {v3}, Lvendor/qti/ims/configaidlservice/SettingsValues;-><init>()V

    .line 221
    .local v3, "v":Lvendor/qti/ims/configaidlservice/SettingsValues;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;

    iput-object v4, v3, Lvendor/qti/ims/configaidlservice/SettingsValues;->boolData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeBool;

    .line 222
    const/4 v4, 0x3

    invoke-direct {p0, v4, v3}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->sendConfigSettings(ILvendor/qti/ims/configaidlservice/SettingsValues;)I

    .line 224
    .end local v3    # "v":Lvendor/qti/ims/configaidlservice/SettingsValues;
    :cond_0
    return-void
.end method

.method public setUserAgentValue(Lvendor/qti/ims/configaidlservice/SettingsValues;)V
    .locals 5
    .param p1, "values"    # Lvendor/qti/ims/configaidlservice/SettingsValues;

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lvendor/qti/ims/configaidlservice/SettingsValues;->stringData:[Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 302
    .local v0, "strList":Ljava/util/List;, "Ljava/util/List<Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;

    .line 303
    .local v2, "kvStr":Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;
    iget v3, v2, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->key:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 304
    iget-object v1, v2, Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;->value:Ljava/lang/String;

    iput-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mUserAgentValue:Ljava/lang/String;

    .line 305
    goto :goto_1

    .line 307
    .end local v2    # "kvStr":Lvendor/qti/ims/configaidlservice/KeyValuePairTypeString;
    :cond_0
    goto :goto_0

    .line 308
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->notifyUserAgentStatusToSipTransport()V

    .line 310
    return-void
.end method

.method public triggerAcsRequest(I)V
    .locals 3
    .param p1, "reasonCode"    # I

    .line 351
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    if-eqz v0, :cond_0

    .line 353
    :try_start_0
    const-string v0, "ImsConfigAidlServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerAcsRequest with ReasonCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mAidlConfigService:Lvendor/qti/ims/configaidlservice/IConfigService;

    iget v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->mUserData:I

    invoke-interface {v0, p1, v1}, Lvendor/qti/ims/configaidlservice/IConfigService;->triggerAcsRequest(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 359
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public updateUceStatusOnModem(Ljava/util/concurrent/Executor;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;)V
    .locals 1
    .param p1, "uceExec"    # Ljava/util/concurrent/Executor;
    .param p2, "caps"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    .param p3, "uceCb"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    .line 542
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->setUceExecutor(Ljava/util/concurrent/Executor;)V

    .line 543
    invoke-virtual {p0, p3}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->setUceCbListener(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;)V

    .line 544
    invoke-direct {p0, p2}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->cacheUceCap(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    .line 545
    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->isModemQmiUp:Z

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0, p2}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->getUceStatus(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    .line 547
    :cond_0
    return-void
.end method
