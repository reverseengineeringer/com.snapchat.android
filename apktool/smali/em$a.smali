.class public final enum Lem$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lem$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lem$a;

.field public static final enum b:Lem$a;

.field public static final enum c:Lem$a;

.field public static final enum d:Lem$a;

.field public static final enum e:Lem$a;

.field private static final synthetic f:[Lem$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lem$a;

    const-string v1, "INVALID_COUNTRY_CODE"

    invoke-direct {v0, v1, v2}, Lem$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lem$a;->a:Lem$a;

    .line 30
    new-instance v0, Lem$a;

    const-string v1, "NOT_A_NUMBER"

    invoke-direct {v0, v1, v3}, Lem$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lem$a;->b:Lem$a;

    .line 34
    new-instance v0, Lem$a;

    const-string v1, "TOO_SHORT_AFTER_IDD"

    invoke-direct {v0, v1, v4}, Lem$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lem$a;->c:Lem$a;

    .line 37
    new-instance v0, Lem$a;

    const-string v1, "TOO_SHORT_NSN"

    invoke-direct {v0, v1, v5}, Lem$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lem$a;->d:Lem$a;

    .line 39
    new-instance v0, Lem$a;

    const-string v1, "TOO_LONG"

    invoke-direct {v0, v1, v6}, Lem$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lem$a;->e:Lem$a;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lem$a;

    sget-object v1, Lem$a;->a:Lem$a;

    aput-object v1, v0, v2

    sget-object v1, Lem$a;->b:Lem$a;

    aput-object v1, v0, v3

    sget-object v1, Lem$a;->c:Lem$a;

    aput-object v1, v0, v4

    sget-object v1, Lem$a;->d:Lem$a;

    aput-object v1, v0, v5

    sget-object v1, Lem$a;->e:Lem$a;

    aput-object v1, v0, v6

    sput-object v0, Lem$a;->f:[Lem$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lem$a;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lem$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lem$a;

    return-object v0
.end method

.method public static values()[Lem$a;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lem$a;->f:[Lem$a;

    invoke-virtual {v0}, [Lem$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lem$a;

    return-object v0
.end method
