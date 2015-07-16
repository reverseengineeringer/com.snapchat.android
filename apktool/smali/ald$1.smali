.class final Lald$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lald;
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
        "Lbko;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lald;


# direct methods
.method constructor <init>(Lald;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lald$1;->this$0:Lald;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 47
    check-cast p1, Lbko;

    check-cast p2, Lbko;

    invoke-virtual {p1}, Lbko;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v0

    invoke-virtual {p2}, Lbko;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
