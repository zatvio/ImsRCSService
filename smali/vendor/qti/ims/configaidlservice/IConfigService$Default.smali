.class public Lvendor/qti/ims/configaidlservice/IConfigService$Default;
.super Ljava/lang/Object;
.source "IConfigService.java"

# interfaces
.implements Lvendor/qti/ims/configaidlservice/IConfigService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/ims/configaidlservice/IConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public deregisterForSettingsChange(I)I
    .locals 1
    .param p1, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public getAcsConfiguration(I)I
    .locals 1
    .param p1, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getRcsServiceStatus(Lvendor/qti/ims/configaidlservice/RcsStatus;)I
    .locals 1
    .param p1, "rcsStatus"    # Lvendor/qti/ims/configaidlservice/RcsStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public getSettingsValue(II)I
    .locals 1
    .param p1, "settingsId"    # I
    .param p2, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getUceStatus(Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;)I
    .locals 1
    .param p1, "uceCapInfo"    # Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getUserAgent(I)I
    .locals 1
    .param p1, "appType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public registerForSettingsChange(I)I
    .locals 1
    .param p1, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public setAppToken(Ljava/lang/String;I)I
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public setConfig(Lvendor/qti/ims/configaidlservice/ConfigData;I)I
    .locals 1
    .param p1, "configData"    # Lvendor/qti/ims/configaidlservice/ConfigData;
    .param p2, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public setSettingsValue(Lvendor/qti/ims/configaidlservice/SettingsData;I)I
    .locals 1
    .param p1, "settingsData"    # Lvendor/qti/ims/configaidlservice/SettingsData;
    .param p2, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public setSmsVersion(Ljava/lang/String;)I
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public triggerAcsRequest(II)I
    .locals 1
    .param p1, "autoConfigReasonType"    # I
    .param p2, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public updateTokenFetchStatus(IIII)I
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "tokenType"    # I
    .param p3, "status"    # I
    .param p4, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    return v0
.end method
