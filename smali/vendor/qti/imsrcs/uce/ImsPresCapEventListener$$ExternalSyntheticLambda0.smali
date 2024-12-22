.class public final synthetic Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lvendor/qti/ims/rcsuceaidlservice/SipResponse;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;JLvendor/qti/ims/rcsuceaidlservice/SipResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda0;->f$0:Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    iput-wide p2, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda0;->f$2:Lvendor/qti/ims/rcsuceaidlservice/SipResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda0;->f$0:Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    iget-wide v1, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda0;->f$2:Lvendor/qti/ims/rcsuceaidlservice/SipResponse;

    invoke-virtual {v0, v1, v2, v3}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->lambda$handlePublishUpdate$4$vendor-qti-imsrcs-uce-ImsPresCapEventListener(JLvendor/qti/ims/rcsuceaidlservice/SipResponse;)V

    return-void
.end method
