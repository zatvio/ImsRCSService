.class public final synthetic Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lvendor/qti/ims/rcsuceaidlservice/SipResponse;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;JLvendor/qti/ims/rcsuceaidlservice/SipResponse;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda5;->f$0:Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    iput-wide p2, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda5;->f$1:J

    iput-object p4, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda5;->f$2:Lvendor/qti/ims/rcsuceaidlservice/SipResponse;

    iput p5, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda5;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda5;->f$0:Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    iget-wide v1, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda5;->f$1:J

    iget-object v3, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda5;->f$2:Lvendor/qti/ims/rcsuceaidlservice/SipResponse;

    iget v4, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda5;->f$3:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->lambda$handleSipResponse$2$vendor-qti-imsrcs-uce-ImsPresCapEventListener(JLvendor/qti/ims/rcsuceaidlservice/SipResponse;I)V

    return-void
.end method
