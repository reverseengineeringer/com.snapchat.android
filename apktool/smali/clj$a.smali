.class final Lclj$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lchl;

.field c:Lclj$a;

.field d:Ljava/lang/String;

.field e:I

.field private f:I


# direct methods
.method constructor <init>(Lchl;J)V
    .locals 2

    .prologue
    const/high16 v0, -0x80000000

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput v0, p0, Lclj$a;->e:I

    .line 178
    iput v0, p0, Lclj$a;->f:I

    .line 181
    iput-wide p2, p0, Lclj$a;->a:J

    .line 182
    iput-object p1, p0, Lclj$a;->b:Lchl;

    .line 183
    return-void
.end method
