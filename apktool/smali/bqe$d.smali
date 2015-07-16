.class public final enum Lbqe$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbqe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbqe$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbqe$d;

.field public static final enum b:Lbqe$d;

.field public static final enum c:Lbqe$d;

.field private static final synthetic e:[Lbqe$d;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 855
    new-instance v0, Lbqe$d;

    const-string v1, "MEMORY"

    const v2, -0xff0100

    invoke-direct {v0, v1, v3, v2}, Lbqe$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbqe$d;->a:Lbqe$d;

    .line 856
    new-instance v0, Lbqe$d;

    const-string v1, "DISK"

    const v2, -0xffff01

    invoke-direct {v0, v1, v4, v2}, Lbqe$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbqe$d;->b:Lbqe$d;

    .line 857
    new-instance v0, Lbqe$d;

    const-string v1, "NETWORK"

    const/high16 v2, -0x10000

    invoke-direct {v0, v1, v5, v2}, Lbqe$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbqe$d;->c:Lbqe$d;

    .line 854
    const/4 v0, 0x3

    new-array v0, v0, [Lbqe$d;

    sget-object v1, Lbqe$d;->a:Lbqe$d;

    aput-object v1, v0, v3

    sget-object v1, Lbqe$d;->b:Lbqe$d;

    aput-object v1, v0, v4

    sget-object v1, Lbqe$d;->c:Lbqe$d;

    aput-object v1, v0, v5

    sput-object v0, Lbqe$d;->e:[Lbqe$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 861
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 862
    iput p3, p0, Lbqe$d;->d:I

    .line 863
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbqe$d;
    .locals 1

    .prologue
    .line 854
    const-class v0, Lbqe$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbqe$d;

    return-object v0
.end method

.method public static values()[Lbqe$d;
    .locals 1

    .prologue
    .line 854
    sget-object v0, Lbqe$d;->e:[Lbqe$d;

    invoke-virtual {v0}, [Lbqe$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbqe$d;

    return-object v0
.end method
