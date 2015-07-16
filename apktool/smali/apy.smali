.class public final Lapy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

.field public final b:Landroid/view/View;

.field public c:J

.field public d:I

.field public e:Landroid/view/animation/Animation;

.field public f:Ljava/util/Date;

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/smartfilters/GeofilterView;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapy;->g:Z

    .line 36
    iput-object p1, p0, Lapy;->a:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    .line 37
    iput-object p2, p0, Lapy;->b:Landroid/view/View;

    .line 38
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lapy;->c:J

    .line 39
    const/16 v0, 0x1f4

    iput v0, p0, Lapy;->d:I

    .line 40
    return-void
.end method
