.class final Lagb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lagb$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lagb;


# direct methods
.method constructor <init>(Lagb;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lagb$1;->a:Lagb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 52
    check-cast p1, Lagb$a;

    check-cast p2, Lagb$a;

    iget-wide v0, p1, Lagb$a;->b:J

    iget-wide v2, p2, Lagb$a;->b:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method
