.class public final Laps$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Laps;


# direct methods
.method public constructor <init>(Laps;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Laps$1;->a:Laps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Laps$1;->a:Laps;

    iget-object v0, v0, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    const/4 v1, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 52
    return-void
.end method
