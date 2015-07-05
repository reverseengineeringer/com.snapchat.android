.class public final enum Lbpd$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbpd$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbpd$d;

.field public static final enum b:Lbpd$d;

.field public static final enum c:Lbpd$d;

.field private static final synthetic e:[Lbpd$d;


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
    new-instance v0, Lbpd$d;

    const-string v1, "MEMORY"

    const v2, -0xff0100

    invoke-direct {v0, v1, v3, v2}, Lbpd$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbpd$d;->a:Lbpd$d;

    .line 856
    new-instance v0, Lbpd$d;

    const-string v1, "DISK"

    const v2, -0xffff01

    invoke-direct {v0, v1, v4, v2}, Lbpd$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbpd$d;->b:Lbpd$d;

    .line 857
    new-instance v0, Lbpd$d;

    const-string v1, "NETWORK"

    const/high16 v2, -0x10000

    invoke-direct {v0, v1, v5, v2}, Lbpd$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbpd$d;->c:Lbpd$d;

    .line 854
    const/4 v0, 0x3

    new-array v0, v0, [Lbpd$d;

    sget-object v1, Lbpd$d;->a:Lbpd$d;

    aput-object v1, v0, v3

    sget-object v1, Lbpd$d;->b:Lbpd$d;

    aput-object v1, v0, v4

    sget-object v1, Lbpd$d;->c:Lbpd$d;

    aput-object v1, v0, v5

    sput-object v0, Lbpd$d;->e:[Lbpd$d;

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
    iput p3, p0, Lbpd$d;->d:I

    .line 863
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbpd$d;
    .locals 1

    .prologue
    .line 854
    const-class v0, Lbpd$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbpd$d;

    return-object v0
.end method

.method public static values()[Lbpd$d;
    .locals 1

    .prologue
    .line 854
    sget-object v0, Lbpd$d;->e:[Lbpd$d;

    invoke-virtual {v0}, [Lbpd$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbpd$d;

    return-object v0
.end method
