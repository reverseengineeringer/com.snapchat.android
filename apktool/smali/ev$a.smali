.class public final enum Lev$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lev$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lev$a;

.field public static final enum b:Lev$a;

.field public static final enum c:Lev$a;

.field public static final enum d:Lev$a;

.field public static final enum e:Lev$a;

.field private static final synthetic f:[Lev$a;


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
    new-instance v0, Lev$a;

    const-string v1, "INVALID_COUNTRY_CODE"

    invoke-direct {v0, v1, v2}, Lev$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lev$a;->a:Lev$a;

    .line 30
    new-instance v0, Lev$a;

    const-string v1, "NOT_A_NUMBER"

    invoke-direct {v0, v1, v3}, Lev$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lev$a;->b:Lev$a;

    .line 34
    new-instance v0, Lev$a;

    const-string v1, "TOO_SHORT_AFTER_IDD"

    invoke-direct {v0, v1, v4}, Lev$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lev$a;->c:Lev$a;

    .line 37
    new-instance v0, Lev$a;

    const-string v1, "TOO_SHORT_NSN"

    invoke-direct {v0, v1, v5}, Lev$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lev$a;->d:Lev$a;

    .line 39
    new-instance v0, Lev$a;

    const-string v1, "TOO_LONG"

    invoke-direct {v0, v1, v6}, Lev$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lev$a;->e:Lev$a;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lev$a;

    sget-object v1, Lev$a;->a:Lev$a;

    aput-object v1, v0, v2

    sget-object v1, Lev$a;->b:Lev$a;

    aput-object v1, v0, v3

    sget-object v1, Lev$a;->c:Lev$a;

    aput-object v1, v0, v4

    sget-object v1, Lev$a;->d:Lev$a;

    aput-object v1, v0, v5

    sget-object v1, Lev$a;->e:Lev$a;

    aput-object v1, v0, v6

    sput-object v0, Lev$a;->f:[Lev$a;

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

.method public static valueOf(Ljava/lang/String;)Lev$a;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lev$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lev$a;

    return-object v0
.end method

.method public static values()[Lev$a;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lev$a;->f:[Lev$a;

    invoke-virtual {v0}, [Lev$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lev$a;

    return-object v0
.end method
