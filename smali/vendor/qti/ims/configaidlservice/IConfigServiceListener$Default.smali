.class public Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Default;
.super Ljava/lang/Object;
.source "IConfigServiceListener.java"

# interfaces
.implements Lvendor/qti/ims/configaidlservice/IConfigServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/ims/configaidlservice/IConfigServiceListener;
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

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public onAutoConfigErrorSipResponse(Lvendor/qti/ims/configaidlservice/AutoConfigResponse;)V
    .locals 0
    .param p1, "acsResponse"    # Lvendor/qti/ims/configaidlservice/AutoConfigResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public onAutoConfigurationReceived(Lvendor/qti/ims/configaidlservice/AutoConfig;)V
    .locals 0
    .param p1, "acsConfig"    # Lvendor/qti/ims/configaidlservice/AutoConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public onCommandStatus(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public onGetSettingsResponse(ILvendor/qti/ims/configaidlservice/SettingsData;I)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "cbdata"    # Lvendor/qti/ims/configaidlservice/SettingsData;
    .param p3, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public onGetUpdatedSettings(Lvendor/qti/ims/configaidlservice/SettingsData;)V
    .locals 0
    .param p1, "cbdata"    # Lvendor/qti/ims/configaidlservice/SettingsData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public onRcsServiceStatusUpdate(Z)V
    .locals 0
    .param p1, "isRcsEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public onReconfigNeeded()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public onTokenFetchRequest(III)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "tokenType"    # I
    .param p3, "reqReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public onUceStatusUpdate(Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;)V
    .locals 0
    .param p1, "capinfo"    # Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public onUserAgentReceived(Ljava/lang/String;I)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "appType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method
