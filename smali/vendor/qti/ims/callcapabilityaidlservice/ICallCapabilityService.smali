.class public interface abstract Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService;
.super Ljava/lang/Object;
.source "ICallCapabilityService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService$Stub;,
        Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "b3f21bfbf30411de155811ecf9de8dc28e8837b8"

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 218
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "vendor$qti$ims$callcapabilityaidlservice$ICallCapabilityService"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityService;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerForCallCapabilityUpdate(Lvendor/qti/ims/callcapabilityaidlservice/ICallCapabilityListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
