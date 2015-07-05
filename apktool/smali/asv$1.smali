.class final Lasv$1;
.super Lbi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lasv;-><init>(Landroid/view/View;ZLbp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lasv;

.field final synthetic val$endSize:F


# direct methods
.method constructor <init>(Lasv;)V
    .locals 1

    .prologue
    .line 50
    iput-object p1, p0, Lasv$1;->this$0:Lasv;

    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lasv$1;->val$endSize:F

    invoke-direct {p0}, Lbi;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbj;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 53
    iget-object v0, p0, Lasv$1;->this$0:Lasv;

    invoke-static {v0}, Lasv;->a(Lasv;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget v0, p0, Lasv$1;->val$endSize:F

    sub-float/2addr v0, v4

    iget-object v1, p1, Lbj;->d:Lbj$a;

    iget-wide v2, v1, Lbj$a;->a:D

    double-to-float v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    .line 55
    iget-object v1, p0, Lasv$1;->this$0:Lasv;

    invoke-static {v1, v0}, Lasv;->a(Lasv;F)V

    .line 57
    :cond_0
    return-void
.end method
