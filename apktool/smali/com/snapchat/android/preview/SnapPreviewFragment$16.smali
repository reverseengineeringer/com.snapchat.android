.class final Lcom/snapchat/android/preview/SnapPreviewFragment$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/preview/SnapPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/preview/SnapPreviewFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V
    .locals 0

    .prologue
    .line 843
    iput-object p1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$16;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 846
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->i()V

    .line 847
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$16;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->d(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    .line 848
    return-void
.end method
