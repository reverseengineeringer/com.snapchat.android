.class final Lbuk$a;
.super Ljava/lang/Object;

# interfaces
.implements Lbul;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbuk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbuk;


# direct methods
.method private constructor <init>(Lbuk;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lbuk$a;->a:Lbuk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbuk;B)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lbuk$a;-><init>(Lbuk;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Date;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method
