.class public interface abstract Lvendor/qti/ims/configservice/V1_0/IConfigService;
.super Ljava/lang/Object;
.source "IConfigService.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/ims/configservice/V1_0/IConfigService$Proxy;,
        Lvendor/qti/ims/configservice/V1_0/IConfigService$Stub;,
        Lvendor/qti/ims/configservice/V1_0/IConfigService$getRcsServiceStatusCallback;,
        Lvendor/qti/ims/configservice/V1_0/IConfigService$getUceStatusCallback;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.qti.ims.configservice@1.0::IConfigService"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/qti/ims/configservice/V1_0/IConfigService;
    .locals 7
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 20
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 21
    return-object v0

    .line 24
    :cond_0
    nop

    .line 25
    const-string v1, "vendor.qti.ims.configservice@1.0::IConfigService"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 27
    .local v2, "iface":Landroid/os/IHwInterface;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lvendor/qti/ims/configservice/V1_0/IConfigService;

    if-eqz v3, :cond_1

    .line 28
    move-object v0, v2

    check-cast v0, Lvendor/qti/ims/configservice/V1_0/IConfigService;

    return-object v0

    .line 31
    :cond_1
    new-instance v3, Lvendor/qti/ims/configservice/V1_0/IConfigService$Proxy;

    invoke-direct {v3, p0}, Lvendor/qti/ims/configservice/V1_0/IConfigService$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 34
    .local v3, "proxy":Lvendor/qti/ims/configservice/V1_0/IConfigService;
    :try_start_0
    invoke-interface {v3}, Lvendor/qti/ims/configservice/V1_0/IConfigService;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 35
    .local v5, "descriptor":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    .line 36
    return-object v3

    .line 38
    .end local v5    # "descriptor":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 40
    :cond_3
    goto :goto_1

    .line 39
    :catch_0
    move-exception v1

    .line 42
    :goto_1
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/qti/ims/configservice/V1_0/IConfigService;
    .locals 1
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 49
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/qti/ims/configservice/V1_0/IConfigService;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/ims/configservice/V1_0/IConfigService;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getService()Lvendor/qti/ims/configservice/V1_0/IConfigService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    const-string v0, "default"

    invoke-static {v0}, Lvendor/qti/ims/configservice/V1_0/IConfigService;->getService(Ljava/lang/String;)Lvendor/qti/ims/configservice/V1_0/IConfigService;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/qti/ims/configservice/V1_0/IConfigService;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    const-string v0, "vendor.qti.ims.configservice@1.0::IConfigService"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/qti/ims/configservice/V1_0/IConfigService;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/ims/configservice/V1_0/IConfigService;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/qti/ims/configservice/V1_0/IConfigService;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const-string v0, "vendor.qti.ims.configservice@1.0::IConfigService"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/qti/ims/configservice/V1_0/IConfigService;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/ims/configservice/V1_0/IConfigService;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Lvendor/qti/ims/configservice/V1_0/IConfigService;
    .locals 1
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    const-string v0, "default"

    invoke-static {v0, p0}, Lvendor/qti/ims/configservice/V1_0/IConfigService;->getService(Ljava/lang/String;Z)Lvendor/qti/ims/configservice/V1_0/IConfigService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deregisterForSettingsChange(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAcsConfiguration(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRcsServiceStatus(Lvendor/qti/ims/configservice/V1_0/IConfigService$getRcsServiceStatusCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSettingsValue(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getUceStatus(Lvendor/qti/ims/configservice/V1_0/IConfigService$getUceStatusCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerForSettingsChange(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setAppToken(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setConfig(Lvendor/qti/ims/configservice/V1_0/ConfigData;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setSettingsValue(Lvendor/qti/ims/configservice/V1_0/SettingsData;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract triggerAcsRequest(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateTokenFetchStatus(IIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
