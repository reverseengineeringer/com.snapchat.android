.class final enum Lboy$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lboy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lboy$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lboy$a;

.field public static final enum b:Lboy$a;

.field public static final enum c:Lboy$a;

.field private static final synthetic g:[Lboy$a;


# instance fields
.field final d:I

.field final e:I

.field final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v11, -0x1

    const/4 v13, 0x2

    const/4 v6, 0x1

    .line 123
    new-instance v0, Lboy$a;

    const-string v1, "MICRO"

    const/16 v4, 0x60

    const/16 v5, 0x60

    invoke-direct/range {v0 .. v5}, Lboy$a;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lboy$a;->a:Lboy$a;

    .line 124
    new-instance v4, Lboy$a;

    const-string v5, "MINI"

    const/16 v8, 0x200

    const/16 v9, 0x180

    move v7, v6

    invoke-direct/range {v4 .. v9}, Lboy$a;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lboy$a;->b:Lboy$a;

    .line 125
    new-instance v7, Lboy$a;

    const-string v8, "FULL"

    move v9, v13

    move v10, v13

    move v12, v11

    invoke-direct/range {v7 .. v12}, Lboy$a;-><init>(Ljava/lang/String;IIII)V

    sput-object v7, Lboy$a;->c:Lboy$a;

    .line 122
    new-array v0, v3, [Lboy$a;

    sget-object v1, Lboy$a;->a:Lboy$a;

    aput-object v1, v0, v2

    sget-object v1, Lboy$a;->b:Lboy$a;

    aput-object v1, v0, v6

    sget-object v1, Lboy$a;->c:Lboy$a;

    aput-object v1, v0, v13

    sput-object v0, Lboy$a;->g:[Lboy$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    iput p3, p0, Lboy$a;->d:I

    .line 133
    iput p4, p0, Lboy$a;->e:I

    .line 134
    iput p5, p0, Lboy$a;->f:I

    .line 135
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lboy$a;
    .locals 1

    .prologue
    .line 122
    const-class v0, Lboy$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lboy$a;

    return-object v0
.end method

.method public static values()[Lboy$a;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lboy$a;->g:[Lboy$a;

    invoke-virtual {v0}, [Lboy$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lboy$a;

    return-object v0
.end method
