.class final Lcki$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcki;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcgk;

.field c:Lcki$a;

.field d:Ljava/lang/String;

.field e:I

.field private f:I


# direct methods
.method constructor <init>(Lcgk;J)V
    .locals 2

    .prologue
    const/high16 v0, -0x80000000

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput v0, p0, Lcki$a;->e:I

    .line 178
    iput v0, p0, Lcki$a;->f:I

    .line 181
    iput-wide p2, p0, Lcki$a;->a:J

    .line 182
    iput-object p1, p0, Lcki$a;->b:Lcgk;

    .line 183
    return-void
.end method
