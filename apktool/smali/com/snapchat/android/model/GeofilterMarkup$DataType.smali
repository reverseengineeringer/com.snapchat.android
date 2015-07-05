.class public final enum Lcom/snapchat/android/model/GeofilterMarkup$DataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/GeofilterMarkup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/GeofilterMarkup$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/GeofilterMarkup$DataType;

.field public static final enum IMAGE:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

.field public static final enum SMART_FILTER:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

.field public static final enum TEXT:Lcom/snapchat/android/model/GeofilterMarkup$DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/GeofilterMarkup$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/GeofilterMarkup$DataType;->TEXT:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    .line 27
    new-instance v0, Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/GeofilterMarkup$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/GeofilterMarkup$DataType;->IMAGE:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    .line 28
    new-instance v0, Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    const-string v1, "SMART_FILTER"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/GeofilterMarkup$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/GeofilterMarkup$DataType;->SMART_FILTER:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    sget-object v1, Lcom/snapchat/android/model/GeofilterMarkup$DataType;->TEXT:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/model/GeofilterMarkup$DataType;->IMAGE:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/GeofilterMarkup$DataType;->SMART_FILTER:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/model/GeofilterMarkup$DataType;->$VALUES:[Lcom/snapchat/android/model/GeofilterMarkup$DataType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/GeofilterMarkup$DataType;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/GeofilterMarkup$DataType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/snapchat/android/model/GeofilterMarkup$DataType;->$VALUES:[Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/GeofilterMarkup$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    return-object v0
.end method
