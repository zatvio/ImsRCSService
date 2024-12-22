.class public abstract Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;
.super Ljava/lang/Object;
.source "ImsConfigServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SipTransportConfigUpdateCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAirplaneModeChange(Z)V
.end method

.method public abstract onRcsStatusReceived(Z)V
.end method

.method public abstract onUserAgentStringReceived(Ljava/lang/String;)V
.end method
