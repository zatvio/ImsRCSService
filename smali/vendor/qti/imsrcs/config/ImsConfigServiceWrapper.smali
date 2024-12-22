.class public Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;
.super Ljava/lang/Object;
.source "ImsConfigServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;,
        Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;
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

.field mHidlConfigListener:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;

.field mHidlConfigListener_1_0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;

.field mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

.field mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

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

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    .line 51
    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    .line 52
    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;

    invoke-direct {v1, p0, v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;)V

    iput-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigListener:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;

    .line 53
    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigListener_1_0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;

    .line 55
    const-string v1, "ImsConfigServiceWrapper"

    iput-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->LOG_TAG:Ljava/lang/String;

    .line 57
    const/16 v1, 0x4d2

    iput v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserData:I

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mIsRcsEnabled:Z

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isRegForInd:Z

    .line 66
    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isModemQmiUp:Z

    .line 71
    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isCachedConfigCompressed:Z

    .line 72
    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserAgentValue:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    .line 49
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->uceCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;
    .param p1, "x1"    # Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;

    .line 49
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getRcsCapabilities(Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    .line 49
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->uceEx:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$1300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    .line 49
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->rcsEx:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$200(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)I
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    .line 49
    iget v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserData:I

    return v0
.end method

.method static synthetic access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    .line 49
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->configCbListener:Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    return-object v0
.end method

.method static synthetic access$402(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;
    .param p1, "x1"    # Z

    .line 49
    iput-boolean p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isModemQmiUp:Z

    return p1
.end method

.method static synthetic access$500(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    .line 49
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->initQmiServicesQueryListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;

    return-object v0
.end method

.method static synthetic access$600(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    .line 49
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getUceExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    .line 49
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->acsQueryListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;

    return-object v0
.end method

.method static synthetic access$800(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    .line 49
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getRcsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    .line 49
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->rcsCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    return-object v0
.end method

.method private cacheUceCap(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .locals 0
    .param p1, "caps"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 804
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->uceCaps:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 805
    return-void
.end method

.method private getRcsCapabilities(Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    .locals 4
    .param p1, "uceCapabilityInfo"    # Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;

    .line 863
    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    .line 864
    .local v0, "capabilities":Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    const/4 v1, 0x0

    .line 865
    .local v1, "uceCaps":I
    iget-boolean v2, p1, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isOptionsEnabled:Z

    const-string v3, "ImsConfigServiceWrapper"

    if-eqz v2, :cond_0

    .line 866
    or-int/lit8 v1, v1, 0x1

    .line 867
    const-string v2, "getRcsCapabilities isOptionsEnabled"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_0
    iget-boolean v2, p1, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isPresenceEnabled:Z

    if-eqz v2, :cond_1

    .line 870
    or-int/lit8 v1, v1, 0x2

    .line 871
    const-string v2, "getRcsCapabilities isPresenceEnabled"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_1
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->addCapabilities(I)V

    .line 874
    return-object v0
.end method

.method private getRcsExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 91
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->rcsEx:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private getUceExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 87
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->uceEx:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private sendConfigSettings(ILvendor/qti/ims/configservice/V1_0/SettingsValues;)I
    .locals 6
    .param p1, "id"    # I
    .param p2, "values"    # Lvendor/qti/ims/configservice/V1_0/SettingsValues;

    .line 972
    const/4 v0, 0x3

    .line 973
    .local v0, "status":I
    new-instance v1, Lvendor/qti/ims/configservice/V1_0/SettingsData;

    invoke-direct {v1}, Lvendor/qti/ims/configservice/V1_0/SettingsData;-><init>()V

    .line 974
    .local v1, "settingsData":Lvendor/qti/ims/configservice/V1_0/SettingsData;
    new-instance v2, Lvendor/qti/ims/configservice/V1_0/SettingsValues;

    invoke-direct {v2}, Lvendor/qti/ims/configservice/V1_0/SettingsValues;-><init>()V

    .line 975
    .local v2, "valuesList":Lvendor/qti/ims/configservice/V1_0/SettingsValues;
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p2, Lvendor/qti/ims/configservice/V1_0/SettingsValues;->intData:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lvendor/qti/ims/configservice/V1_0/SettingsValues;->intData:Ljava/util/ArrayList;

    .line 976
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p2, Lvendor/qti/ims/configservice/V1_0/SettingsValues;->stringData:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lvendor/qti/ims/configservice/V1_0/SettingsValues;->stringData:Ljava/util/ArrayList;

    .line 977
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p2, Lvendor/qti/ims/configservice/V1_0/SettingsValues;->boolData:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lvendor/qti/ims/configservice/V1_0/SettingsValues;->boolData:Ljava/util/ArrayList;

    .line 978
    iput-object v2, v1, Lvendor/qti/ims/configservice/V1_0/SettingsData;->settingsValues:Lvendor/qti/ims/configservice/V1_0/SettingsValues;

    .line 979
    iput p1, v1, Lvendor/qti/ims/configservice/V1_0/SettingsData;->settingsId:I

    .line 981
    iget-object v3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    const-string v4, "ImsConfigServiceWrapper"

    if-eqz v3, :cond_0

    .line 983
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calling sendConfigSettings setsettingsValue "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lvendor/qti/ims/configservice/V1_0/SettingsValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    iget v5, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserData:I

    invoke-interface {v3, v1, v5}, Lvendor/qti/ims/configservice/V1_0/IConfigService;->setSettingsValue(Lvendor/qti/ims/configservice/V1_0/SettingsData;I)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 988
    :goto_0
    goto :goto_1

    .line 986
    :catch_0
    move-exception v3

    .line 987
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 990
    :cond_0
    const-string v3, " sendConfigSettings : mHidlConfigService_1_0 not initialized"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :goto_1
    return v0
.end method

.method private sendConfigSettings(ILvendor/qti/ims/configservice/V1_1/SettingsValues;)I
    .locals 6
    .param p1, "id"    # I
    .param p2, "values"    # Lvendor/qti/ims/configservice/V1_1/SettingsValues;

    .line 996
    const/4 v0, 0x3

    .line 997
    .local v0, "status":I
    new-instance v1, Lvendor/qti/ims/configservice/V1_1/SettingsData;

    invoke-direct {v1}, Lvendor/qti/ims/configservice/V1_1/SettingsData;-><init>()V

    .line 998
    .local v1, "settingsData":Lvendor/qti/ims/configservice/V1_1/SettingsData;
    new-instance v2, Lvendor/qti/ims/configservice/V1_1/SettingsValues;

    invoke-direct {v2}, Lvendor/qti/ims/configservice/V1_1/SettingsValues;-><init>()V

    .line 999
    .local v2, "valuesList":Lvendor/qti/ims/configservice/V1_1/SettingsValues;
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p2, Lvendor/qti/ims/configservice/V1_1/SettingsValues;->intData:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lvendor/qti/ims/configservice/V1_1/SettingsValues;->intData:Ljava/util/ArrayList;

    .line 1000
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p2, Lvendor/qti/ims/configservice/V1_1/SettingsValues;->stringData:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lvendor/qti/ims/configservice/V1_1/SettingsValues;->stringData:Ljava/util/ArrayList;

    .line 1001
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p2, Lvendor/qti/ims/configservice/V1_1/SettingsValues;->boolData:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lvendor/qti/ims/configservice/V1_1/SettingsValues;->boolData:Ljava/util/ArrayList;

    .line 1002
    iput-object v2, v1, Lvendor/qti/ims/configservice/V1_1/SettingsData;->settingsValues:Lvendor/qti/ims/configservice/V1_1/SettingsValues;

    .line 1003
    iput p1, v1, Lvendor/qti/ims/configservice/V1_1/SettingsData;->settingsId:I

    .line 1005
    iget-object v3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    const-string v4, "ImsConfigServiceWrapper"

    if-eqz v3, :cond_0

    .line 1007
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calling sendConfigSettings setsettingsValue_1_1 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lvendor/qti/ims/configservice/V1_1/SettingsValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget-object v3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    iget v5, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserData:I

    invoke-interface {v3, v1, v5}, Lvendor/qti/ims/configservice/V1_1/IConfigService;->setSettingsValue_1_1(Lvendor/qti/ims/configservice/V1_1/SettingsData;I)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 1012
    :goto_0
    goto :goto_1

    .line 1010
    :catch_0
    move-exception v3

    .line 1011
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1014
    :cond_0
    const-string v3, " sendConfigSettings : mHidlConfigService not initialized"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :goto_1
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 101
    invoke-virtual {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->clearConfigCache()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserAgentValue:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->configCbListener:Lvendor/qti/imsrcs/config/ImsConfigCbListener;

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

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->cachedConfig:[B

    .line 96
    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->cacheRcsClientConfig:Landroid/telephony/ims/RcsClientConfiguration;

    .line 97
    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->uceCaps:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 98
    return-void
.end method

.method public createHidlConfigListener_1_0()V
    .locals 2

    .line 124
    new-instance v0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;)V

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigListener_1_0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;

    .line 125
    return-void
.end method

.method public deregisterForSettingsChange()V
    .locals 4

    .line 1069
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    const/4 v1, 0x0

    const-string v2, "ImsConfigServiceWrapper"

    if-eqz v0, :cond_1

    .line 1071
    :try_start_0
    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isModemQmiUp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isRegForInd:Z

    if-eqz v0, :cond_0

    .line 1072
    const-string v0, "deregisterForSettingsChange "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    iget v3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserData:I

    invoke-interface {v0, v3}, Lvendor/qti/ims/configservice/V1_1/IConfigService;->deregisterForSettingsChange(I)I

    .line 1074
    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isRegForInd:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    goto :goto_1

    .line 1080
    :cond_1
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    if-eqz v0, :cond_3

    .line 1082
    :try_start_1
    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isModemQmiUp:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isRegForInd:Z

    if-eqz v0, :cond_2

    .line 1083
    const-string v0, "deregisterForSettingsChange mHidlConfigService_1_0 "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    iget v3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserData:I

    invoke-interface {v0, v3}, Lvendor/qti/ims/configservice/V1_0/IConfigService;->deregisterForSettingsChange(I)I

    .line 1085
    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isRegForInd:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1089
    :cond_2
    goto :goto_1

    .line 1087
    :catch_1
    move-exception v0

    .line 1088
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    return-void
.end method

.method public getRcsStatus(Z)V
    .locals 4
    .param p1, "isRcsEnabled"    # Z

    .line 880
    new-instance v0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$2;

    invoke-direct {v0, p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$2;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;Z)V

    .line 911
    .local v0, "rcsCb":Lvendor/qti/ims/configservice/V1_0/IConfigService$getRcsServiceStatusCallback;
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    const-string v2, "ImsConfigServiceWrapper"

    if-eqz v1, :cond_0

    .line 913
    :try_start_0
    invoke-interface {v1, v0}, Lvendor/qti/ims/configservice/V1_1/IConfigService;->getRcsServiceStatus(Lvendor/qti/ims/configservice/V1_0/IConfigService$getRcsServiceStatusCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 915
    :catch_0
    move-exception v1

    .line 916
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Unable to fetch RCS Service Status"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 919
    :cond_0
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    if-eqz v1, :cond_1

    .line 921
    :try_start_1
    invoke-interface {v1, v0}, Lvendor/qti/ims/configservice/V1_0/IConfigService;->getRcsServiceStatus(Lvendor/qti/ims/configservice/V1_0/IConfigService$getRcsServiceStatusCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 925
    goto :goto_1

    .line 923
    :catch_1
    move-exception v1

    .line 924
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "Unable to fetch RCS Service Status _1_0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method public getSettingsValue(I)V
    .locals 3
    .param p1, "settingsId"    # I

    .line 1139
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    const-string v1, "ImsConfigServiceWrapper"

    if-eqz v0, :cond_0

    .line 1141
    :try_start_0
    const-string v0, "calling getSettingsValue "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    iget v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserData:I

    invoke-interface {v0, p1, v2}, Lvendor/qti/ims/configservice/V1_1/IConfigService;->getSettingsValue(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1143
    :catch_0
    move-exception v0

    .line 1144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1147
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    if-eqz v0, :cond_1

    .line 1149
    :try_start_1
    const-string v0, "calling getSettingsValue mHidlConfigService_1_0 "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    iget v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserData:I

    invoke-interface {v0, p1, v2}, Lvendor/qti/ims/configservice/V1_0/IConfigService;->getSettingsValue(II)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1153
    goto :goto_1

    .line 1151
    :catch_1
    move-exception v0

    .line 1152
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method public getUceStatus(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .locals 4
    .param p1, "caps"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 809
    new-instance v0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;

    invoke-direct {v0, p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    .line 837
    .local v0, "configCb":Lvendor/qti/ims/configservice/V1_0/IConfigService$getUceStatusCallback;
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    const-string v2, "ImsConfigServiceWrapper"

    if-nez v1, :cond_0

    .line 838
    const-string v1, "mHidlConfigService is null"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_0
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    const-string v3, "Unable to query UCE Status"

    if-eqz v1, :cond_1

    .line 841
    :try_start_0
    const-string v1, "starting to query UCE Status"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    invoke-interface {v1, v0}, Lvendor/qti/ims/configservice/V1_1/IConfigService;->getUceStatus(Lvendor/qti/ims/configservice/V1_0/IConfigService$getUceStatusCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 843
    :catch_0
    move-exception v1

    .line 844
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 847
    :cond_1
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    if-eqz v1, :cond_2

    .line 849
    :try_start_1
    const-string v1, "starting to query UCE Status v1_0 service"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    invoke-interface {v1, v0}, Lvendor/qti/ims/configservice/V1_0/IConfigService;->getUceStatus(Lvendor/qti/ims/configservice/V1_0/IConfigService$getUceStatusCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 853
    goto :goto_1

    .line 851
    :catch_1
    move-exception v1

    .line 852
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return-void
.end method

.method public gethidlConfigListener()Lvendor/qti/ims/configservice/V1_1/IConfigServiceListener;
    .locals 1

    .line 112
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigListener:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;

    return-object v0
.end method

.method public gethidlConfigListener_1_0()Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener;
    .locals 1

    .line 116
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigListener_1_0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;

    return-object v0
.end method

.method synthetic lambda$notifyRcsStatus$2$vendor-qti-imsrcs-config-ImsConfigServiceWrapper(Z)V
    .locals 2
    .param p1, "rcsstatus"    # Z

    .line 347
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->rcsCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;->onRcsStatusReceived(Z)V

    goto :goto_0

    .line 350
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRcsStatus received rcsStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 351
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    const-string v1, "ImsConfigServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_0
    return-void
.end method

.method synthetic lambda$notifyRcsStatus$3$vendor-qti-imsrcs-config-ImsConfigServiceWrapper(Z)V
    .locals 2
    .param p1, "rcsstatus"    # Z

    .line 382
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->rcsCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;->onRcsStatusReceived(Z)V

    goto :goto_0

    .line 385
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRcsStatus received rcsStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 386
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    const-string v1, "ImsConfigServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_0
    return-void
.end method

.method synthetic lambda$notifyUceStatus$0$vendor-qti-imsrcs-config-ImsConfigServiceWrapper(Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)V
    .locals 2
    .param p1, "uceCapabilityInfo"    # Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;

    .line 264
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->uceCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getRcsCapabilities(Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;->onUceConfigStatusReceived(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    goto :goto_0

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUceConfigStatusReceived received presenceStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isPresenceEnabled:Z

    .line 268
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "optionsStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isOptionsEnabled:Z

    .line 269
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    const-string v1, "ImsConfigServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_0
    return-void
.end method

.method synthetic lambda$notifyUceStatus$1$vendor-qti-imsrcs-config-ImsConfigServiceWrapper(Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)V
    .locals 2
    .param p1, "uceCapabilityInfo"    # Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;

    .line 304
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->uceCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    if-eqz v0, :cond_0

    .line 305
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getRcsCapabilities(Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;->onUceConfigStatusReceived(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    goto :goto_0

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUceConfigStatusReceived received presenceStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isPresenceEnabled:Z

    .line 308
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "optionsStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isOptionsEnabled:Z

    .line 309
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    const-string v1, "ImsConfigServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_0
    return-void
.end method

.method synthetic lambda$notifyUserAgentStatusToSipTransport$4$vendor-qti-imsrcs-config-ImsConfigServiceWrapper()V
    .locals 2

    .line 432
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->rcsCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    if-eqz v0, :cond_0

    .line 433
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserAgentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;->onUserAgentStringReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyUserAgentStatusToSipTransport received mUserAgentValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserAgentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :goto_0
    return-void
.end method

.method public notifyRcsStatus(Lvendor/qti/ims/configservice/V1_0/SettingsValues;)V
    .locals 6
    .param p1, "values"    # Lvendor/qti/ims/configservice/V1_0/SettingsValues;

    .line 368
    const/4 v0, 0x0

    .line 370
    .local v0, "isRcsEnabled":Z
    iget-object v1, p1, Lvendor/qti/ims/configservice/V1_0/SettingsValues;->boolData:Ljava/util/ArrayList;

    .line 371
    .local v1, "boolList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;

    .line 372
    .local v3, "kvBool":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;
    iget v4, v3, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;->key:I

    const/16 v5, 0x19e

    if-ne v4, v5, :cond_0

    .line 373
    iget-boolean v0, v3, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;->value:Z

    .line 374
    goto :goto_1

    .line 376
    .end local v3    # "kvBool":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;
    :cond_0
    goto :goto_0

    .line 378
    :cond_1
    :goto_1
    move v2, v0

    .line 379
    .local v2, "rcsstatus":Z
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getRcsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 380
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getRcsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$$ExternalSyntheticLambda2;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;Z)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 392
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRcsExecutor null notifyRcsStatus received rcsStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 393
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 392
    const-string v4, "ImsConfigServiceWrapper"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_2
    return-void
.end method

.method public notifyRcsStatus(Lvendor/qti/ims/configservice/V1_1/SettingsValues;)V
    .locals 6
    .param p1, "values"    # Lvendor/qti/ims/configservice/V1_1/SettingsValues;

    .line 327
    const/4 v0, 0x0

    .line 329
    .local v0, "isRcsEnabled":Z
    iget-object v1, p1, Lvendor/qti/ims/configservice/V1_1/SettingsValues;->boolData:Ljava/util/ArrayList;

    .line 330
    .local v1, "boolList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;

    .line 331
    .local v3, "kvBool":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;
    iget v4, v3, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;->key:I

    const/16 v5, 0x19e

    if-ne v4, v5, :cond_0

    .line 332
    iget-boolean v0, v3, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;->value:Z

    .line 333
    goto :goto_1

    .line 335
    .end local v3    # "kvBool":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;
    :cond_0
    goto :goto_0

    .line 337
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mIsRcsEnabled:Z

    const-string v3, "ImsConfigServiceWrapper"

    if-eq v0, v2, :cond_2

    .line 338
    const-string v2, "UI and modem NV mismatch for RcsMessagingEnabled, so set value as per UI"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-boolean v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mIsRcsEnabled:Z

    invoke-virtual {p0, v2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setRcsStatus(Z)V

    .line 340
    return-void

    .line 343
    :cond_2
    move v2, v0

    .line 344
    .local v2, "rcsstatus":Z
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getRcsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 345
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getRcsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$$ExternalSyntheticLambda1;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;Z)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 357
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRcsExecutor null notifyRcsStatus received rcsStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 358
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 357
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :goto_2
    return-void
.end method

.method public notifyUceStatus(Lvendor/qti/ims/configservice/V1_0/SettingsValues;)V
    .locals 7
    .param p1, "values"    # Lvendor/qti/ims/configservice/V1_0/SettingsValues;

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "isPresenceEnabled":Z
    const/4 v1, 0x0

    .line 289
    .local v1, "isOptionsEnabled":Z
    iget-object v2, p1, Lvendor/qti/ims/configservice/V1_0/SettingsValues;->boolData:Ljava/util/ArrayList;

    .line 290
    .local v2, "boolList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;

    .line 291
    .local v4, "kvBool":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;
    iget v5, v4, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;->key:I

    const/16 v6, 0x19b

    if-ne v5, v6, :cond_0

    .line 292
    iget-boolean v0, v4, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;->value:Z

    .line 293
    :cond_0
    iget v5, v4, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;->key:I

    const/16 v6, 0x1a6

    if-ne v5, v6, :cond_1

    .line 294
    iget-boolean v1, v4, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;->value:Z

    .line 295
    .end local v4    # "kvBool":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;
    :cond_1
    goto :goto_0

    .line 297
    :cond_2
    new-instance v3, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;

    invoke-direct {v3}, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;-><init>()V

    .line 298
    .local v3, "uceCapabilityInfo":Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;
    iput-boolean v0, v3, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isPresenceEnabled:Z

    .line 299
    iput-boolean v1, v3, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isOptionsEnabled:Z

    .line 301
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getUceExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 302
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getUceExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v3}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$$ExternalSyntheticLambda4;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 315
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUceExecutor null onUceConfigStatusReceived received presenceStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v3, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isPresenceEnabled:Z

    .line 316
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "optionsStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v3, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isOptionsEnabled:Z

    .line 317
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 315
    const-string v5, "ImsConfigServiceWrapper"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_1
    return-void
.end method

.method public notifyUceStatus(Lvendor/qti/ims/configservice/V1_1/SettingsValues;)V
    .locals 7
    .param p1, "values"    # Lvendor/qti/ims/configservice/V1_1/SettingsValues;

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "isPresenceEnabled":Z
    const/4 v1, 0x0

    .line 249
    .local v1, "isOptionsEnabled":Z
    iget-object v2, p1, Lvendor/qti/ims/configservice/V1_1/SettingsValues;->boolData:Ljava/util/ArrayList;

    .line 250
    .local v2, "boolList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;

    .line 251
    .local v4, "kvBool":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;
    iget v5, v4, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;->key:I

    const/16 v6, 0x19b

    if-ne v5, v6, :cond_0

    .line 252
    iget-boolean v0, v4, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;->value:Z

    .line 253
    :cond_0
    iget v5, v4, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;->key:I

    const/16 v6, 0x1a6

    if-ne v5, v6, :cond_1

    .line 254
    iget-boolean v1, v4, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;->value:Z

    .line 255
    .end local v4    # "kvBool":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;
    :cond_1
    goto :goto_0

    .line 257
    :cond_2
    new-instance v3, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;

    invoke-direct {v3}, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;-><init>()V

    .line 258
    .local v3, "uceCapabilityInfo":Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;
    iput-boolean v0, v3, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isPresenceEnabled:Z

    .line 259
    iput-boolean v1, v3, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isOptionsEnabled:Z

    .line 261
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getUceExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 262
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getUceExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$$ExternalSyntheticLambda0;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 275
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUceExecutor null onUceConfigStatusReceived received presenceStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v3, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isPresenceEnabled:Z

    .line 276
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "optionsStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v3, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isOptionsEnabled:Z

    .line 277
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 275
    const-string v5, "ImsConfigServiceWrapper"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_1
    return-void
.end method

.method public notifyUserAgentStatusToSipTransport()V
    .locals 2

    .line 427
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserAgentValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 428
    return-void

    .line 429
    :cond_0
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getRcsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 430
    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getRcsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$$ExternalSyntheticLambda3;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 440
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRcsExecutor null notifyUserAgentStatusToSipTransport received mUserAgentValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserAgentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :goto_0
    return-void
.end method

.method public queryAcsConfiguration()V
    .locals 3

    .line 1048
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    const-string v1, "ImsConfigServiceWrapper"

    if-eqz v0, :cond_0

    .line 1050
    :try_start_0
    const-string v0, "calling getAcsConfiguration "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    iget v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserData:I

    invoke-interface {v0, v2}, Lvendor/qti/ims/configservice/V1_1/IConfigService;->getAcsConfiguration(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1056
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    if-eqz v0, :cond_1

    .line 1058
    :try_start_1
    const-string v0, "calling getAcsConfiguration mHidlConfigService_1_0 "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    iget v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserData:I

    invoke-interface {v0, v2}, Lvendor/qti/ims/configservice/V1_0/IConfigService;->getAcsConfiguration(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1062
    goto :goto_1

    .line 1060
    :catch_1
    move-exception v0

    .line 1061
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method public queryInitBootupRequests()V
    .locals 2

    .line 1132
    const-string v0, "ImsConfigServiceWrapper"

    const-string v1, "queryInitBootupRequests"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserAgentValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1134
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getSettingsValue(I)V

    .line 1136
    :cond_0
    return-void
.end method

.method public queryInitCachedRequests()V
    .locals 3

    .line 1109
    const-string v0, "queryInitCachedRequests"

    const-string v1, "ImsConfigServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isModemQmiUp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isModemQmiUp:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    invoke-virtual {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->registerForSettingsChange()V

    .line 1114
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->cachedConfig:[B

    if-eqz v0, :cond_0

    .line 1115
    iget-boolean v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isCachedConfigCompressed:Z

    invoke-virtual {p0, v0, v2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setConfig([BZ)I

    .line 1117
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->uceCaps:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    if-eqz v0, :cond_1

    .line 1118
    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getUceStatus(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    .line 1120
    :cond_1
    const-string v0, "calling setRcsStatus "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mIsRcsEnabled:Z

    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getRcsStatus(Z)V

    .line 1124
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->cacheRcsClientConfig:Landroid/telephony/ims/RcsClientConfiguration;

    if-eqz v0, :cond_2

    .line 1125
    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->sendRcsClientConfig(Landroid/telephony/ims/RcsClientConfiguration;)I

    .line 1127
    :cond_2
    invoke-virtual {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->queryInitBootupRequests()V

    .line 1128
    return-void
.end method

.method public registerAutoConfig(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;)V
    .locals 0
    .param p1, "acsQueryListener"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;

    .line 1095
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->acsQueryListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;

    .line 1096
    return-void
.end method

.method public registerForSettingsChange()V
    .locals 4

    .line 1022
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    const/4 v1, 0x1

    const-string v2, "ImsConfigServiceWrapper"

    if-eqz v0, :cond_1

    .line 1024
    :try_start_0
    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isModemQmiUp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isRegForInd:Z

    if-nez v0, :cond_0

    .line 1025
    const-string v0, "registerForSettingsChange "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    iget v3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserData:I

    invoke-interface {v0, v3}, Lvendor/qti/ims/configservice/V1_1/IConfigService;->registerForSettingsChange(I)I

    .line 1027
    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isRegForInd:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    goto :goto_1

    .line 1033
    :cond_1
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    if-eqz v0, :cond_3

    .line 1035
    :try_start_1
    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isModemQmiUp:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isRegForInd:Z

    if-nez v0, :cond_2

    .line 1036
    const-string v0, "registerForSettingsChange mHidlConfigService_1_0 "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    iget v3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserData:I

    invoke-interface {v0, v3}, Lvendor/qti/ims/configservice/V1_0/IConfigService;->registerForSettingsChange(I)I

    .line 1038
    iput-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isRegForInd:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1042
    :cond_2
    goto :goto_1

    .line 1040
    :catch_1
    move-exception v0

    .line 1041
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    return-void
.end method

.method public registerForSipStatusOnModem(Ljava/util/concurrent/Executor;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;)V
    .locals 1
    .param p1, "sipExec"    # Ljava/util/concurrent/Executor;
    .param p2, "sipCb"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    .line 787
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setRcsExecutor(Ljava/util/concurrent/Executor;)V

    .line 788
    invoke-virtual {p0, p2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setRcsCbListener(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;)V

    .line 789
    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isModemQmiUp:Z

    if-eqz v0, :cond_0

    .line 790
    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mIsRcsEnabled:Z

    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getRcsStatus(Z)V

    .line 792
    :cond_0
    invoke-virtual {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->notifyUserAgentStatusToSipTransport()V

    .line 793
    return-void
.end method

.method public registerQmiServiceUp(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;)V
    .locals 2
    .param p1, "initQmiServicesQueryListener"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;

    .line 1099
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->initQmiServicesQueryListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;

    .line 1101
    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isModemQmiUp:Z

    if-nez v0, :cond_0

    .line 1102
    const-string v0, "ImsConfigServiceWrapper"

    const-string v1, "registerQmiServiceUp done, wait for qmiService up as currently modem is not up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-void

    .line 1105
    :cond_0
    invoke-virtual {p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;->onQmiServiceUp()V

    .line 1106
    return-void
.end method

.method public sendRcsClientConfig(Landroid/telephony/ims/RcsClientConfiguration;)I
    .locals 14
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;

    .line 133
    const/4 v0, 0x1

    .line 134
    .local v0, "isRcsEnabled":Z
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->cacheRcsClientConfig:Landroid/telephony/ims/RcsClientConfiguration;

    .line 135
    const/4 v1, -0x1

    .line 136
    .local v1, "status":I
    iget-boolean v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isModemQmiUp:Z

    if-nez v2, :cond_0

    .line 137
    return v1

    .line 138
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v2, "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;>;"
    const-string v3, "sendRcsClientConfig rcvd client config values"

    const-string v4, "ImsConfigServiceWrapper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v3, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;

    invoke-direct {v3}, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;-><init>()V

    .line 142
    .local v3, "kvStr7":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;
    const/16 v5, 0x12c

    iput v5, v3, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->key:I

    .line 143
    const-string v5, "1"

    iput-object v5, v3, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->value:Ljava/lang/String;

    .line 144
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendRcsClientConfig: DEFAULT_SMS_APP_KEY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v5, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;

    invoke-direct {v5}, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;-><init>()V

    .line 149
    .local v5, "kvStr":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;
    const/16 v6, 0x135

    iput v6, v5, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->key:I

    .line 150
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getRcsVersion()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->value:Ljava/lang/String;

    .line 151
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendRcsClientConfig: RCS_VERSION_KEY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->value:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v6, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;

    invoke-direct {v6}, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;-><init>()V

    .line 155
    .local v6, "kvStr1":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;
    const/16 v7, 0x138

    iput v7, v6, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->key:I

    .line 156
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getRcsProfile()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->value:Ljava/lang/String;

    .line 157
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendRcsClientConfig: RCS_PROFILE_KEY: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->value:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v7, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;

    invoke-direct {v7}, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;-><init>()V

    .line 161
    .local v7, "kvStr2":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;
    const/16 v8, 0x130

    iput v8, v7, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->key:I

    .line 162
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getClientVendor()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->value:Ljava/lang/String;

    .line 163
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendRcsClientConfig: CLIENT_VENDOR_KEY: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->value:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v8, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;

    invoke-direct {v8}, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;-><init>()V

    .line 167
    .local v8, "kvStr3":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;
    const/16 v9, 0x131

    iput v9, v8, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->key:I

    .line 168
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getClientVersion()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->value:Ljava/lang/String;

    .line 169
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendRcsClientConfig: CLIENT_VERSION_KEY: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->value:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v9, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;

    invoke-direct {v9}, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;-><init>()V

    .line 173
    .local v9, "kvStr4":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;
    const/16 v10, 0x132

    iput v10, v9, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->key:I

    .line 174
    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v10, v9, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->value:Ljava/lang/String;

    .line 175
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendRcsClientConfig: TERMINAL_VENDOR_KEY: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v9, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->value:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v10, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;

    invoke-direct {v10}, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;-><init>()V

    .line 179
    .local v10, "kvStr5":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;
    const/16 v11, 0x133

    iput v11, v10, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->key:I

    .line 180
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v11, v10, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->value:Ljava/lang/String;

    .line 181
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sendRcsClientConfig: TERMINAL_MODEL_KEY: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v10, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->value:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v11, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;

    invoke-direct {v11}, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;-><init>()V

    .line 186
    .local v11, "kvStr6":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;
    const/16 v12, 0x134

    iput v12, v11, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->key:I

    .line 187
    sget-object v12, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v12, v11, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->value:Ljava/lang/String;

    .line 188
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendRcsClientConfig: TERMINAL_SW_VERSION_KEY: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v11, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->value:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->isRcsEnabledByUser()Z

    move-result v12

    iput-boolean v12, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mIsRcsEnabled:Z

    .line 194
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendRcsClientConfig received Client config: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mIsRcsEnabled:Z

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-boolean v4, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mIsRcsEnabled:Z

    invoke-virtual {p0, v4}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getRcsStatus(Z)V

    .line 202
    iget-object v4, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    const/4 v12, 0x1

    if-eqz v4, :cond_1

    .line 203
    new-instance v4, Lvendor/qti/ims/configservice/V1_1/SettingsValues;

    invoke-direct {v4}, Lvendor/qti/ims/configservice/V1_1/SettingsValues;-><init>()V

    .line 204
    .local v4, "values":Lvendor/qti/ims/configservice/V1_1/SettingsValues;
    iput-object v2, v4, Lvendor/qti/ims/configservice/V1_1/SettingsValues;->stringData:Ljava/util/ArrayList;

    .line 205
    invoke-direct {p0, v12, v4}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->sendConfigSettings(ILvendor/qti/ims/configservice/V1_1/SettingsValues;)I

    move-result v1

    .line 206
    .end local v4    # "values":Lvendor/qti/ims/configservice/V1_1/SettingsValues;
    goto :goto_0

    .line 207
    :cond_1
    iget-object v4, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    if-eqz v4, :cond_2

    .line 208
    new-instance v4, Lvendor/qti/ims/configservice/V1_0/SettingsValues;

    invoke-direct {v4}, Lvendor/qti/ims/configservice/V1_0/SettingsValues;-><init>()V

    .line 209
    .local v4, "values":Lvendor/qti/ims/configservice/V1_0/SettingsValues;
    iput-object v2, v4, Lvendor/qti/ims/configservice/V1_0/SettingsValues;->stringData:Ljava/util/ArrayList;

    .line 210
    invoke-direct {p0, v12, v4}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->sendConfigSettings(ILvendor/qti/ims/configservice/V1_0/SettingsValues;)I

    move-result v1

    .line 212
    .end local v4    # "values":Lvendor/qti/ims/configservice/V1_0/SettingsValues;
    :cond_2
    :goto_0
    return v1
.end method

.method public setConfig([BZ)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "isCompressed"    # Z

    .line 935
    new-instance v0, Lvendor/qti/ims/configservice/V1_0/ConfigData;

    invoke-direct {v0}, Lvendor/qti/ims/configservice/V1_0/ConfigData;-><init>()V

    .line 936
    .local v0, "configHidlData":Lvendor/qti/ims/configservice/V1_0/ConfigData;
    const/4 v1, 0x3

    .line 937
    .local v1, "status":I
    iput-boolean p2, v0, Lvendor/qti/ims/configservice/V1_0/ConfigData;->isCompressed:Z

    .line 938
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, p1, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    .line 939
    .local v4, "b":Ljava/lang/Byte;
    iget-object v5, v0, Lvendor/qti/ims/configservice/V1_0/ConfigData;->config:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    .end local v4    # "b":Ljava/lang/Byte;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 942
    :cond_0
    iget-object v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->cachedConfig:[B

    if-nez v2, :cond_1

    .line 943
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->cachedConfig:[B

    .line 944
    iput-boolean p2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isCachedConfigCompressed:Z

    .line 947
    :cond_1
    iget-object v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    const/16 v3, 0x162e

    const-string v4, "calling setconfig"

    const-string v5, "ImsConfigServiceWrapper"

    if-eqz v2, :cond_2

    .line 949
    :try_start_0
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    invoke-interface {v2, v0, v3}, Lvendor/qti/ims/configservice/V1_1/IConfigService;->setConfig(Lvendor/qti/ims/configservice/V1_0/ConfigData;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 955
    :goto_1
    goto :goto_2

    .line 953
    :catch_0
    move-exception v2

    .line 954
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 957
    :cond_2
    iget-object v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    if-eqz v2, :cond_3

    .line 959
    :try_start_1
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    invoke-interface {v2, v0, v3}, Lvendor/qti/ims/configservice/V1_0/IConfigService;->setConfig(Lvendor/qti/ims/configservice/V1_0/ConfigData;I)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v2

    .line 965
    goto :goto_2

    .line 963
    :catch_1
    move-exception v2

    .line 964
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    return v1
.end method

.method public setConfigCbListener(Lvendor/qti/imsrcs/config/ImsConfigCbListener;)V
    .locals 0
    .param p1, "cb"    # Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    .line 75
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->configCbListener:Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    .line 76
    return-void
.end method

.method public setHidlConfigService(Lvendor/qti/ims/configservice/V1_1/IConfigService;)V
    .locals 0
    .param p1, "s"    # Lvendor/qti/ims/configservice/V1_1/IConfigService;

    .line 120
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    .line 121
    return-void
.end method

.method public setHidlConfigService_1_0(Lvendor/qti/ims/configservice/V1_0/IConfigService;)V
    .locals 0
    .param p1, "s"    # Lvendor/qti/ims/configservice/V1_0/IConfigService;

    .line 109
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    .line 110
    return-void
.end method

.method public setRcsCbListener(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;)V
    .locals 0
    .param p1, "l"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    .line 931
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->rcsCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    .line 932
    return-void
.end method

.method public setRcsExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "ex"    # Ljava/util/concurrent/Executor;

    .line 83
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->rcsEx:Ljava/util/concurrent/Executor;

    .line 84
    return-void
.end method

.method public setRcsStatus(Z)V
    .locals 4
    .param p1, "isRcsEnabled"    # Z

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .local v0, "boolList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;>;"
    new-instance v1, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;

    invoke-direct {v1}, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;-><init>()V

    .line 452
    .local v1, "kvBool":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;
    const/16 v2, 0x19e

    iput v2, v1, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;->key:I

    .line 453
    iput-boolean p1, v1, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;->value:Z

    .line 454
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    .line 457
    new-instance v2, Lvendor/qti/ims/configservice/V1_1/SettingsValues;

    invoke-direct {v2}, Lvendor/qti/ims/configservice/V1_1/SettingsValues;-><init>()V

    .line 458
    .local v2, "v":Lvendor/qti/ims/configservice/V1_1/SettingsValues;
    iput-object v0, v2, Lvendor/qti/ims/configservice/V1_1/SettingsValues;->boolData:Ljava/util/ArrayList;

    .line 459
    invoke-direct {p0, v3, v2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->sendConfigSettings(ILvendor/qti/ims/configservice/V1_1/SettingsValues;)I

    .line 460
    .end local v2    # "v":Lvendor/qti/ims/configservice/V1_1/SettingsValues;
    goto :goto_0

    .line 461
    :cond_0
    iget-object v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    if-eqz v2, :cond_1

    .line 462
    new-instance v2, Lvendor/qti/ims/configservice/V1_0/SettingsValues;

    invoke-direct {v2}, Lvendor/qti/ims/configservice/V1_0/SettingsValues;-><init>()V

    .line 463
    .local v2, "v":Lvendor/qti/ims/configservice/V1_0/SettingsValues;
    iput-object v0, v2, Lvendor/qti/ims/configservice/V1_0/SettingsValues;->boolData:Ljava/util/ArrayList;

    .line 464
    invoke-direct {p0, v3, v2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->sendConfigSettings(ILvendor/qti/ims/configservice/V1_0/SettingsValues;)I

    .line 466
    .end local v2    # "v":Lvendor/qti/ims/configservice/V1_0/SettingsValues;
    :cond_1
    :goto_0
    return-void
.end method

.method public setUceCbListener(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;)V
    .locals 0
    .param p1, "l"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    .line 859
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->uceCbListener:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    .line 860
    return-void
.end method

.method public setUceExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "ex"    # Ljava/util/concurrent/Executor;

    .line 79
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->uceEx:Ljava/util/concurrent/Executor;

    .line 80
    return-void
.end method

.method public setUceStatus(ZZ)V
    .locals 5
    .param p1, "isPresenceEnabled"    # Z
    .param p2, "isOptionsEnabled"    # Z

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v0, "boolList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;>;"
    new-instance v1, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;

    invoke-direct {v1}, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;-><init>()V

    .line 225
    .local v1, "kvBool":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;
    const/16 v2, 0x19b

    iput v2, v1, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;->key:I

    .line 226
    iput-boolean p1, v1, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;->value:Z

    .line 227
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v2, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;

    invoke-direct {v2}, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;-><init>()V

    .line 229
    .local v2, "kvBoolOpt":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;
    const/16 v3, 0x1a6

    iput v3, v2, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;->key:I

    .line 230
    iput-boolean p2, v2, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeBool;->value:Z

    .line 231
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    const/4 v4, 0x3

    if-eqz v3, :cond_0

    .line 233
    new-instance v3, Lvendor/qti/ims/configservice/V1_1/SettingsValues;

    invoke-direct {v3}, Lvendor/qti/ims/configservice/V1_1/SettingsValues;-><init>()V

    .line 234
    .local v3, "v":Lvendor/qti/ims/configservice/V1_1/SettingsValues;
    iput-object v0, v3, Lvendor/qti/ims/configservice/V1_1/SettingsValues;->boolData:Ljava/util/ArrayList;

    .line 235
    invoke-direct {p0, v4, v3}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->sendConfigSettings(ILvendor/qti/ims/configservice/V1_1/SettingsValues;)I

    .line 236
    .end local v3    # "v":Lvendor/qti/ims/configservice/V1_1/SettingsValues;
    goto :goto_0

    .line 237
    :cond_0
    iget-object v3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    if-eqz v3, :cond_1

    .line 238
    new-instance v3, Lvendor/qti/ims/configservice/V1_0/SettingsValues;

    invoke-direct {v3}, Lvendor/qti/ims/configservice/V1_0/SettingsValues;-><init>()V

    .line 239
    .local v3, "v":Lvendor/qti/ims/configservice/V1_0/SettingsValues;
    iput-object v0, v3, Lvendor/qti/ims/configservice/V1_0/SettingsValues;->boolData:Ljava/util/ArrayList;

    .line 240
    invoke-direct {p0, v4, v3}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->sendConfigSettings(ILvendor/qti/ims/configservice/V1_0/SettingsValues;)I

    .line 242
    .end local v3    # "v":Lvendor/qti/ims/configservice/V1_0/SettingsValues;
    :cond_1
    :goto_0
    return-void
.end method

.method public setUserAgentValue(Lvendor/qti/ims/configservice/V1_0/SettingsValues;)V
    .locals 5
    .param p1, "values"    # Lvendor/qti/ims/configservice/V1_0/SettingsValues;

    .line 416
    iget-object v0, p1, Lvendor/qti/ims/configservice/V1_0/SettingsValues;->stringData:Ljava/util/ArrayList;

    .line 417
    .local v0, "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;

    .line 418
    .local v2, "kvStr":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;
    iget v3, v2, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->key:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 419
    iget-object v1, v2, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->value:Ljava/lang/String;

    iput-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserAgentValue:Ljava/lang/String;

    .line 420
    goto :goto_1

    .line 422
    .end local v2    # "kvStr":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;
    :cond_0
    goto :goto_0

    .line 423
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->notifyUserAgentStatusToSipTransport()V

    .line 424
    return-void
.end method

.method public setUserAgentValue(Lvendor/qti/ims/configservice/V1_1/SettingsValues;)V
    .locals 5
    .param p1, "values"    # Lvendor/qti/ims/configservice/V1_1/SettingsValues;

    .line 402
    iget-object v0, p1, Lvendor/qti/ims/configservice/V1_1/SettingsValues;->stringData:Ljava/util/ArrayList;

    .line 403
    .local v0, "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;

    .line 404
    .local v2, "kvStr":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;
    iget v3, v2, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->key:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 405
    iget-object v1, v2, Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;->value:Ljava/lang/String;

    iput-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserAgentValue:Ljava/lang/String;

    .line 406
    goto :goto_1

    .line 408
    .end local v2    # "kvStr":Lvendor/qti/ims/configservice/V1_0/KeyValuePairTypeString;
    :cond_0
    goto :goto_0

    .line 409
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->notifyUserAgentStatusToSipTransport()V

    .line 410
    return-void
.end method

.method public triggerAcsRequest(I)V
    .locals 3
    .param p1, "reasonCode"    # I

    .line 469
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    const-string v1, "ImsConfigServiceWrapper"

    if-eqz v0, :cond_0

    .line 471
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerAcsRequest with ReasonCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService:Lvendor/qti/ims/configservice/V1_1/IConfigService;

    iget v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserData:I

    invoke-interface {v0, p1, v1}, Lvendor/qti/ims/configservice/V1_1/IConfigService;->triggerAcsRequest(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 475
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 477
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    if-eqz v0, :cond_1

    .line 479
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerAcsRequest v1_0 service with ReasonCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mHidlConfigService_1_0:Lvendor/qti/ims/configservice/V1_0/IConfigService;

    iget v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->mUserData:I

    invoke-interface {v0, p1, v1}, Lvendor/qti/ims/configservice/V1_0/IConfigService;->triggerAcsRequest(II)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 483
    goto :goto_1

    .line 481
    :catch_1
    move-exception v0

    .line 482
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 486
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method public updateUceStatusOnModem(Ljava/util/concurrent/Executor;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;)V
    .locals 1
    .param p1, "uceExec"    # Ljava/util/concurrent/Executor;
    .param p2, "caps"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    .param p3, "uceCb"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    .line 796
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setUceExecutor(Ljava/util/concurrent/Executor;)V

    .line 797
    invoke-virtual {p0, p3}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setUceCbListener(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;)V

    .line 798
    invoke-direct {p0, p2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->cacheUceCap(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    .line 799
    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->isModemQmiUp:Z

    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {p0, p2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getUceStatus(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    .line 801
    :cond_0
    return-void
.end method
