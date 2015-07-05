.class public final Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;
    }
.end annotation


# instance fields
.field public final previewQuality:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;->previewQuality:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    .line 11
    return-void
.end method
