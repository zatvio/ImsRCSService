.class public Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService$Default;
.super Ljava/lang/Object;
.source "ICallCapabilityService.java"

# interfaces
.implements Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService;
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

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public registerForCallCapabilityUpdate(Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityListener;)I
    .locals 1
    .param p1, "callCapabilityListener"    # Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return v0
.end method
