.class final Lnet/hockeyapp/android/views/AttachmentView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/views/AttachmentView;->a(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/hockeyapp/android/views/AttachmentView;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/views/AttachmentView;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lnet/hockeyapp/android/views/AttachmentView$2;->a:Lnet/hockeyapp/android/views/AttachmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView$2;->a:Lnet/hockeyapp/android/views/AttachmentView;

    iget-object v1, v0, Lnet/hockeyapp/android/views/AttachmentView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 231
    return-void
.end method
