.class final Lom$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lom;->a(Lblu;Lbmd;)V
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
        "Lom$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lom;


# direct methods
.method constructor <init>(Lom;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lom$1;->this$0:Lom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 144
    check-cast p1, Lom$a;

    check-cast p2, Lom$a;

    iget-object v0, p1, Lom$a;->mName:Ljava/lang/String;

    iget-object v1, p2, Lom$a;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
