.class public abstract Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;
.super Ljava/lang/Object;
.source "SipDelegateWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;
    }
.end annotation


# instance fields
.field final LOG_TAG:Ljava/lang/String;

.field protected mConnectionHandle:J

.field protected mDestroyReason:I

.field public mSipDelegateEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;->mConnectionHandle:J

    .line 36
    const-string v0, "SipDelegateWrapper"

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;->LOG_TAG:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getConnectionHandle()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;->mConnectionHandle:J

    return-wide v0
.end method

.method public getConnectionHandle(J)J
    .locals 2
    .param p1, "handle"    # J

    .line 47
    iget-wide v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;->mConnectionHandle:J

    return-wide v0
.end method

.method public handleActiveSessionStatus(Ljava/lang/String;I)V
    .locals 0
    .param p1, "featureTag"    # Ljava/lang/String;
    .param p2, "userData"    # I

    .line 66
    return-void
.end method

.method public handleCloseTransaction(Ljava/lang/String;I)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "userData"    # I

    .line 58
    return-void
.end method

.method public handleHoldSessionStatus(Ljava/lang/String;I)V
    .locals 0
    .param p1, "featureTag"    # Ljava/lang/String;
    .param p2, "userData"    # I

    .line 64
    return-void
.end method

.method public handleInactiveSessionStatus(Ljava/lang/String;I)V
    .locals 0
    .param p1, "featureTag"    # Ljava/lang/String;
    .param p2, "userData"    # I

    .line 68
    return-void
.end method

.method public handleSendMessage(Landroid/telephony/ims/SipMessage;Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;I)V
    .locals 0
    .param p1, "sipMessage"    # Landroid/telephony/ims/SipMessage;
    .param p2, "msgParser"    # Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;
    .param p3, "userData"    # I

    .line 60
    return-void
.end method

.method public handleUpdateSession(Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;I)V
    .locals 0
    .param p1, "msgParser"    # Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;
    .param p2, "peerInfo"    # I

    .line 62
    return-void
.end method

.method public setConnectionHandle(J)V
    .locals 0
    .param p1, "handle"    # J

    .line 43
    iput-wide p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;->mConnectionHandle:J

    .line 44
    return-void
.end method

.method public setSipDelegateEventListener(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;)V
    .locals 0
    .param p1, "listener"    # Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    .line 52
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;->mSipDelegateEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    .line 53
    return-void
.end method
