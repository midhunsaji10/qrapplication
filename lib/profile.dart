import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            CircleAvatar(
              backgroundImage: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoGCBUTERcTExMXFxcZFRcXExgYFyAXGRcYGhgZGBcXFxgcHywjGiAqHxcaJDgkKCwuMzIyGSE3PDcxOysxMi4BCwsLDw4PHBERHDkoIykxMTE5OTMyLjExOjEyMTEuMTExOTExMTExMTMxMTExMTkxMzE2MTMzMzExMTExMTEzMf/AABEIAOEA4QMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAAAQUCAwQGB//EAEcQAAICAQMBBgMFBAUJCAMAAAECAAMRBBIhMQUGEyJBUTJhcRQjQlKBYpGhsTNzgpLBBxU0cqKy0eHwFiRTY4OTs8JDVGT/xAAaAQEAAwEBAQAAAAAAAAAAAAAAAQIDBAUG/8QAKxEAAgIBBAECBAcBAAAAAAAAAAECEQMEEiExQRNRImFx8BUygZGhsdEF/9oADAMBAAIRAxEAPwD7NERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAERMcwCYlZre1VR9mCcY3HPTPy9ZZCC0oyik2uyYkQTBUnMTGTmCaMokRBBBmFByqn5D+UwtqyPiI/Wa9NUdo8zdBxxx/Cc7nNZEq4plqVdnZEgCTOgqIiIAiIgCIiAIiIAiIgCIiAIiIBESJjAMpQdraN1c2LkgnOR1U/8JezWLQTgSGrNcUnB2jzemqa6zn1OWPsPWX2v1fhKDtJGQD8h7zcFHt16/OQ6hgQRkHqISo0yZVOStcLwc2l7QDsVUHAGd3of0nZumnT6dUGFGB/P6n1nD3o1jU6Wx6/6UqK6c9PFsIrrz8t7KT8gYulbM5U38KO+jUK4JR1YBipKkNhhwVOOhHtNmZ5H/JzQtX2mkMCUsqDBc7VIorQIpI82AgBb1IJODkD10iEt0U15Iap0SDMhMIliKM5CDAA+WJAMzkVzZDMsSZAMmSVIkxIgExEQBERAEREAREQBERAERIJgGLTEtIJkQXSNVqHORGnr9TNskQW3OqIkEyZSd5ESyzT1W7TUXsstD42Fa62xvB4IDOrc8ZUH0ggu55jveXsuppSwVhA+otcjO0KPDTgnGc2MwJyAa8kHGJx6Htqum4U6OxNXXZu2U02o7UMOSclsLTzyCfKcbAQ21K3tvSaq3WE76ja9Ve7TqpeqtEL+G917bSw3M+EFZ3HPGFLDLPGUsbUO2THtFz3IZfH1CohWvw9Oaskkumbl8Rs85YqTzyRgnkz1hny1e3dVpbLNQpTVgqlVm2vwEY1s5VKbDYxds2MOK2BxjPBnquze8z6xSul07o4Ypc2oXCVMADtCq33zcg7VZRjlmXIBYIuMFGXaJyJp21weoiV3YGpeypjYVZlttr3IpVW8OxkztLHBypB56qTxnA73PBx1xxNSplErKO1gQoIO4nBA9OcZ5lmDFkyg49oyDTYJpkqcQUaN0iAZMFRERAEREAREQBERAERMWgAmYOZlNZMFkIiILGFgOOD/AAmQ+f8AwkxK7Vu3AT5r3u1DavWvW2xatNkhnAZU2hTZaVzy24lFB4Xw3bnIE+lT5f3woOm1lpZd9OoRi6jy+Szyspc+VG8TcVLEBhYw6qMzLo0wVu5+2Uv+cSS5r8V2rIbT2WItdnjiw1itdmMhmBXaVU4DA5B49hr0sSnwmbGo1blr2U/AuB4mxhg4SvbUre5Q9SZS6DtFa3Fhr0xt5zdabKHJxguaTWVLkAZZHG7noOJ0v2izFmrbxrmAU2lClNa/sAnlQcnapYk9WHUU4R17XOStGOoCtqAiACuhAiKBhRYyjgD0217QP6wiXHdXWpptNqbyctZZZZRXnBsFS06fCA/mt2rn13pKjsPs19Tiqgt4W5vH1PHUkmzwzjD2sSeQNqEknoFNr/lG7LUJo0qzWtbPVVsOAhFW+s49drUqwB9VB9JMfcjUzUtuGPd8/wCE9we3HG3R6jG/zBH27S1i5a6u1eniZ3OCOHXJHTJ9tPlnbdzEVaytdrW0C/bnhdTp9rqpI/MCUPuteJ9QqtDqrDoyhh9CMiWTOXLBKmvP9muvSorFgoDHnP8Aw9pvxE1lTu6+ntIk66RS2+2bIgScjHSWIJUzKazM1MFWZSZiJlBUmIiAIiIAiJEAQ0mQYBg00qxyePb1mxjIlXFtrkuhERLEnB2lrggIRl3Ajg+n6Tr01u5FY8ZUH94zNd+jRzllBPv0/fjrN4GOILScdqSXJM8nf2nsv1T+A9jWEabTgLvS1qaxZ4bfkzZfcMtgYqYkjE9WTjk9PWUvdIsNJU6pxcG1DZPIbUO17A+2PExBn3wU+l7J0z3+E+kv0jsSaUrdlrNaqpZ2FTmlCHYrgc+ZPeW1Xc7SA5dHt/ZttexP1rLbD+qy61WjrsKM6BijbqyRna35h850iRSHqTqrdFPq+3NJp2FT3V1sGrrFZIQjdjZtU48vPUcDB9jKnv3atlOmsQhlGr4I6H7m9Dg+2T1l9pezqqg5C/GSbC7FyQfw7nJIQZOF6DJwBPGd8tKmk0tZrsewfafu0LZWtEr1FlVNSDAUAkIPUjaCSAAD6LYeJp/MoO3bSmg0hHU6nV4HupXVbf08y/wnol7zstdW2/Saetq18EXhnstRVA8Ty2IKlOCQSG4wTg5UUXbmncNptNUvitp1rrYfnfwzdcPbdsqXGeM2gTlNi+EiL4VmGqStlB+0uKf6LTYJ4IxtY8eXfkDJMrdHW4b1+p9P7D7RNwZXQJZWQLEDbl8wyr1vgbkYZwcDoQQCDLKeV7haQpvO4MK6dPpNw6PZR4htKn1Aa3Z8ijD0nqpc5H2IiIBBMmY2Lkf88SQMf9ZlU5bvkDYDM5pBm6WKMmIiCBERAEREAiQ0mYvBKNcSQJLLBayJERBIiJhbYFBZiFUdSTgD6kwCp7X3ai1tIjFVFW/UMpKth9y1Vqw+HcUckg5AQD8YI7O7FwfR6dgMZpr4PBUhACpHoQQQR6ETh7p6tLbta9di2L9qQKysGXaNJpsBSOMbi/T1zI7Q7Pvp8RtIco7Gxqs7WW0ncXqJIUhm5atiAxZjuUk5FGehbpx+k5dEbcHxtmRtwa84byLuJDfD59+Bk8Bec5lF3b766bUIviOKLDj7u37vcfQ1s2BYD1459wJca3tiioDfauT8KKd7ucZwla5Zz8lBMEHeRPBf5Q7EF9KhAy6au3W2IPxOo8PTKfrYWP8AYMttR3mSnc97bXfAo0ilWvwMgM4B8rMTzk7VAXJBzPNdk0nU360Xtts1FFZypyEUG1AteeorynOBknJA3YkNm2LHKXxeEUVeqenBs1qpeFs3MK9yI9xBZ3LZ82cYyVGOAMcTpGlreprFqt+0YdbrK72FqlQCxFxbL7gylVPBBGQMYG+/sLU7b0sCKlgJuuLr4SLsCWWrnz/Au7YwwD+LHM4+xkbwNRh1p05bDMwYWV1+GpCqOAGFTImTyCOh6Sis9B7HxFH0XuTqls0abVVdmayqLsTycBkX8Ksu1wPTdLueZ7gamo6cKtieI7PY1W4CysMfu0ZM5BVFQH5gz000PNdW6JkREAREQBNqmapnBVmyJAMmCoiIgCIiARMHmbTW0EoxkyIguJW9sdsVacDeSXYEoi8u+OpA9B+0cAZHM5u9HbPgKK6wGucEqD8KL0Nj/LPAXqx46BiPHAHJZmLuxy7tyzn5/wCAHAHAAE0hDcXhDcXPana+sYZ2/Z6zjaVAd2yMj7xht6eiqcfmlFZSGYPZmxgSQ1rG1hnrtLk7foMCWd/atmoVaK61YqcOQAqJ0KBmx5CB+FcsQw4xzN+g7vB2AutZifwpmtM+nwnef1bHym0YpLorLNjx8Pv5Fd2R20mi1W6xhstVUsXPmUoSUtC9do3MrEDoVJ4Uz3Wp7SRavGaxFqxu8QsAm30O/piVn+bqtOSlKKgPPlULnPqSPiPzlc3ZekqbxjTRWwJbxCiJtY/EwYjgn1MrLFu+JM5Zatb38JSaDs26xGISsVs9rV+KzKxra1zWWr8M7coVODz7gdJB7nqxyatICev3O7P1PlzL1u2qfwubM9DUj2qf7aKV/jOTtXtDxabK667gXrdFcKgKFlKhsNYp4Jz+ktcEqbIU9TP8sXX0Ojut2EtvZLVLsr8W2yyl0QBRttLUWBQeVOxGxnkNj1nnu0rDQ6faCdJchOywn7tvRvDsYbLEYYyp5HlyFIGPRaHvOyVAHRWo6oAlaGtkOBgKtm8BVH7QHHvOXS9plrDqNSlotZdoCoXSmvOfDr2FickAs/ViBwAFUciSm+XR3qeXAnUW0+1RR6zXajVptQ/aRwQtVfhUNz5WtsdyLMEZ2K3PqPUaa9GlIH2hrfKxszcCtYdm3M/QV53ZIOSR6YntdH23ptw8SxRnhVszUxPyWzaT+6dRPqOh6fSdOPHFdcnJk12RPmKS9ubPH2VpYBuCupweQHH1Gest77LNIyijVs4IyyP97WD0xyxZfXyqwx85v1XYtLksq+G55L1eQk+7AeVz/rAyo12kso5ceJX/AOIg5Ue9ieg/aXI9SFE0lC+zTHqseV1Lj79z0/ZPedHIS9fCYkBWzmtyeAA/G0njhgOTgEz0M+ZcMPQgj6gg/wAxLju5201DLVaxakkKjk5NRPAVietZ6Z/Cf2fgxnjrlG0sdco9rERMTMTOYTNRBDMxJiIKCIiAIiIBi0wPSbJgwglGE0a/VLTU9rnCopZscnAGcAep9AJvnlu/uo4poH42Nr8dUq24HyPiPW39gyYq3RdK3R55rHsdrbP6Sw7m5yFHRa1+Sjj58nqTGnoa6zwkJUABrXH4FPAC/tNg49gCfQA4WuFUsegBJ+gGTL/u/pjTUpIxYx8Sz/XOPLn9kAL9FnYl4Q1WX0oVHtnTptMtSCtFCqOg+vJJ9ST1JPJzNOv7QSnAOWds7K05dsdT1wq/tEgcgZyRNnbnaRUBsAux2VJ0BbBPPsAAWJ9gfXAlPRVjLMdzty7nqx9Poo9F9P3zLLm2KvJzaPQvUScm+F58szt1F1nxOK1/LXy2PY2MP91R9Z0nsStaxflWfjLOS7gMM7d7bmznHqBjHScV14BChWdyMqiDLEe/OAo/aYgfOdFOguYed1qU9VTzt8iWYbQfltP1nm5tXGH539/Q9tafFipQ4a+Vv9zGa7bkX4nVfqwH853J2NV+MNYfXxHLA/2M7P3Cdug0FCHHhVovXyoF5/QTh/EIuVRX78G0s9K6KAa6r/xq/wD3F/4zvfUVPUoQDcOpByD745Py/wCUtLKlyQFBGeMj0/dOW7sylzlqKyfc1rn9DjIkfiNOnEq8t06/krWGRg9PUTRXo1TmotUef6I7Rk9SU+Bj9VMz8BHJ+zLqGCsVZqyHrBHDAG5trYPBFecEEcEYmqu59pYjxEBKuyIyvWw6i2hvOhGR0z1zgDmdkNT03a+vAc8WT4ZK/qdlXaVlf9KviJ+etfOB7tUM7vqnP7M9Fob6Xp3Aq25dwKtncAeCG6funma3DAMpBBGQQcgg9CCOswqu+zv4g/omOb19Fz/+VfbH4h6jJ6jnuhmbpSZ52r/58YRc8S/T/DDtvQCjN1YxUTm5PSvPW1PZfzDp+LjBzyuoIIIBBGCD0IPUGerIBGDyD19iJVd3jRp7LKrhkoy+CSC33Tg7SfTA5TnnyEzslxycej1Da2S5rote5faJsrahyS9W0AnktW2fDYn1I2sp9fKCfinoZ4XQ6hatfW9Y2oXNJGd3lswFIP8AWLWfpme6nLONM6JKmJsTpNYm4ShSQkxEFRERAEREATFxxMpBgGmeM7dKv2jtc4Raq0bJ27cmx3OffDJ9cCe1YT5728c6zUf1lY/dTVL41cjbHzIz7d0Va3VU1vuDvWGB54A8VsnodyIenvL2ea7J51VYPpXbYPqPDr/laf4y/wBdf4dT2fkRn/ugn/CdceFyefrbeVR9kU9j+Le9nVUzVV9FP3rfq42/SpT6yNQ5AAUZdmC1g9CxyefkACx+Smdvd61aECuu7CAZwM5PDnJ98nj1zMOzgLNTZYMba/u0GMYZwLH46fAasfVp42rzbISn5+6PocKeHGoJdJc/Pyd3Z1VOlqZrOeC9trdSQOWbngAdAOnAE0WX6rabU0gKYJCG3befb7vYVGfYvn5Z4mrvIzGnZWhsfK2bB1NdTLZZ9eF2gepdRxnM9NRarqrowZWUMrDkMpGQQfYgzg0mBZob8ivlnNkk4y4ZU6TTeJSt9mqWuplDjwwEABHR7LRn/ZQjoRIzoAu/dZauCTYGutqwOclwTUB9SBNHY+j0tf2rU2114r1NzC1xv2KAr2lM52feGzIXGTn1nku82vv11qoQV3FfCpzgVKzba2sx1sYgkn8C1vt5Xc3pRwYoL4YoxjHJkbt8ItU719lPeuno0tltrPsUVVAZb185dQMDknPABM7e36AECjT6uhHsqrsuN6OipZYqOCBe7LuB27gvl3ZyMZlV/k87NRNedvStNUiZAyTXbXQX49SRY3/q46AAfRr6VdGR1DKylXVhlWUjBVgeCCPSaPHBrlL9ikk4OrOampa0CIoRFUKqgbVVQMAAdAABPP8AZ+pS+666og1kpWrDpYawd1g+XnCg+oQEZBBlv/2eo6MLHQdK7LrHr+hrZirD5EETV3g04qxqUGAuF1AHANXTxD7GvO7P5A458uObWYnPE1Hvs0xzSkrKHtbTeCTcgxWTm9egXPW1fbB+Ie2W6g7unUVVisEMWY/EDjAyPX/r15liygggjIPBB9R6gzz2jUoGqJyanNfPUqMGsk+p2MufnmcmgzuScJeD0oXJ1ZYdgWfdmo9am2DPqmA1Z+flIXPupnH3mrxbVZ+bfUfmceKmfoEs/vTb2WwXVYOcWVHd/wCk64H1Itb+7OjvgFFSsucLbV192cVe3s8+ixz3RR4GTH6OrpdX/Z57VvtRnHVBvH1Tzj+KifUFOeffmfNL6zsyQcMGAOODjg4Pr1n0HsazdpqmPrVWT+qAzPN4O3L2jtWbBMAJmJic7JiIggREQBERAEgyYgGE+c9tf6XqP60f/FUJ9DtcKCzEAAEsTwAAMkk+08VpOxTqbH1FrulVtheqtfu3ZCAFexviXIAIVcEDqcnat4TUHbNcbqRx93v9JY/lq/3rBn/c/hLXvVarUNtGAdiEe+6xUP8AAzI93RSTZpXZbCoBW12srsCkkKxYl0+I+ZTxnJDYxODtbVCzT52lWF9KWI3xI4ur3K37wQehBBHBE1U4yi67pnNljL1064bRjOru6v3G71eyx/0NjbP9kKP0nIG9Zad2aAdHTlsEU18e52An6+s8DXpygor3/o+gzySSs6+767r7n/JspHyO0WuR9RZX/cEzbsEAnwtRdVWSSa6ymzJOW2F0ZqwT6KQBnjEz7sjyWN+a+zP9kiv/AOktp6Gmio4Yr5I8mbubZ43viiVJptFUNtZL2svJ3LUVIDMeSTbYjkkkkqc5yZR93FVtRXY349TqQufzVVtSij+ylrfqZe9+0I1Onf8AC1d1ef291Vij9VVz/ZlF2aqbrNM+Vy7X6dgdreY7mKN6OthY/Rl9zLt/Ed2GF4FXv/J19q6PUaXU/atNWbBuZ9qjJG8Dxq2UDcUcqHDKGZX5KkcT02h716exA7C6o48yW0WIyH1BO3afqCR8553U6/V1Fa0trudsitDpybW2gbmYpciADIyxCAZA6kCT9r1quteosSpnz4bVVq1bkAsUyzEhtoJx6gHBODLJmE8blJJ9ntez9fVeu+m1LFBwSjBsH2OOh+Rm62sOpVhlWBVh7gjBH7p4iu202OwVBq608Sp0GxdTUD5qrFySOfL1O0ujj1Ue00OpS6pLUOUsRXQ+6soZT+4yyMJwcXTKju5WGpAdiWTNbE48zISjH65QmUevULq7AOhrqfOMZObEJ/dWv8JZ6QYNo9r7v42s3+Mru1B/3gfOr+TnH+8Z4eGcVn2KNU2r9zvwJ7lK+zQj41FH7Vjp+hqtf+dYnb3lH/d2Ps9R/dah/wAJwXOFtpdiAFtYkngAeDaCSfoZZfYLdXWdzeDU2Cg27rWAIZXbd5a84+DDHGMkHKj6HDOMYcnna/HKWpTj7JmPa/atdlC1ouGDAZKAcYyWTacLlgOPnL/uqc6LTH/+er/41nke1eyLdODZuFtY5chdtlY48zLkixepJGCPynkj1vc5s9n6UjnOmpI+nhrIm4tLaXnSSotpkJAEmZmLJiIggREQBERAEROPtbWCml7CCdo4UYyzE7URc8ZZiFGfUiAcHfL/AERhjKtbp1tHp4Taitbs/Lwy+flmdUqNT2abq2+2WudykOldrU1IrDBQbCpcYOMuTnnhQdonX22UVoalN1aZN2WLXGsKQBWAPvH3EHkjIUjkmZydm8E4rktpV6vsOi25rbU8TcEBRjmslCdrmv4WfoNzZwFXGMTHT9qPbeErosFYJF1li+GFOzcqqjHc2cr5sbR0yT079dY61O1aeI4UlEyBvbHC5PAyfWOi3DODW93dO6nbWKnxgWVAVuvt0GGHyYEfKcfYxIQ0vjxKSKnwCA2FUo659GRlOOcEkZOJs1PbzMhXT6e1ryWRUesrWtiqSwe04rYDB+F+cYB9urWdlU2W+LYXDsqJgWvWp27iuURgGPmbrn+E5dTp/Wgl0y8JtHV3ZGKmH/nXfxtZv8ZaSiHZXhgnT2vU2ScM7W1sf263Y8H1KlW+csex9b41S2Y2nLI65ztsrdq7EzjnDowz64nViW2Kj7Iwl2ae8PZY1NBr3bGBDVPjPh2L8LYyMjqCMjIJHrPAdpp4f3esr8JgRhiSKy3QPTeMc+3KuPUCfUZDDIweRLSjZrh1EsVpcp+D5Dvsat/CvsY2tYDZW26wUUtVWyIyjJINtlnHLFVXnMtdKQ9iVUvZZVXaLQzu9m0LU9ePFfnc7ODsGdoRs43AS37zdjvXabqgwRm37q0Nhps2Ctt1SnNlViomQmCrIG9SVrDrLLPKLaV9M0Jbqbceu2rwwK2+bbgPUGKZpGcZPc+OTto1CrqLL2OK9Np7Ba37VhSwr9QtQOP/ADF956juxp3q0dFVgw6U1q4HQMEG5R9DkfpKfsTsNmCC2s1U1uLEqZg9ltoO4W6hgSOG8wQE8hSSMbRcdpa51daqVDWMNx3EhK0BwXcjk88BR8RB5ABIlcGOWe+VlZR8dv8AX2fznFp+zjqrPHNjJWAyVhMbrAG5dmYHapI4C8kAHPOJ2r2Tdhj9pXc7MzYpATc3XapcsB8ix+sj7W2mWrS1UvdYtVfw4RAila2dmZjsOASFOdxGAeCR52LSuOaWSXu6/U19RqKSOfW91FdqyLrAqWI7VsQ62BTkqSQGGRkfFjBOQZ6OVvZnani2NU9T1WKCxrbzfd52rZvXKeY5wAxPlPscZ9sdoeAqbantexilSJjl9jONxJG1fJy3pkTuM3K+Wd85+64212VD4arnrr+ScOqj5Lv2D5IJwU9qWC5adRQ1RsAFLK3iK77XaxSVXFe1VBBbGcnHSZ6fsZawfCtvRizNu8Z38zMWZjW5NZySTjbjnjElOis1uXB6WJV9iax7A6XBRbW+xyoIR8gMliA8gMpHGTghlycZNpLmAiIgCIiAIiIAlb2/oTfQ1QIVso9bHkLZW621FgCCQHRSR6jMsogHnatZXYfCtUV2/iqs6nGOaz0tXp5l/XB4HdXWFAAGAOgE7NZpa7VKWIrqequoYH9DxK9+71B6eMg9q9TdWv8AdSwD+EptNVldUzfE5P8As8iD7i22gk5Yo+8MckkstodSSSctjcffgTb/AJrt/wD2m/8AbTP8sfwjaT6iN00+EjNuwrMvGeCVIzx8vWah2ETnxdXqXU/hDJUB/qvRWlg/vTId3NJgA6Sg4zy1asckkklmBJJJOSeSSY2j1K6NGs7UVT4dQ8W78NSHJBPRrWGRUn7Tfpk4B7ew9F4NK1lgzeZ7GAwGsd2ssYDJwC7scZ4zOvTaZK12oiovoqKFH7hMysslRRysiIiSSIzEnEAiUvap8C4aggmpkWu5hz4WxmZLCB+D7xwx9PKTxuIu9skJDIuitcCxPK3DDhkPofVWEnTVbFxuZuvLdf4CLOwqCSQhQk5Y1O9OT6lvCZcn5ma27v1A7q2trfbtLpYzMR6bhZuV8ZONwOMnHUym0v6vFG/aM5xz0z649plNCdlWgY+12t83rqJ/2a1H8JB7GZj95qrmXBBRdlYP9tEFgP0cRtY3oy1KMykIwVsjnGce4I+n85zPr0qArZ/Etx8CDdYx6Z8Neg+ZwB6kToXu7pBnGmq5OW8gO4+rPn4yfUnJMsNJpK6l21Voi/lRQo/cBG0h5eKo4uxdK6+JbaAHsYHYDkVoq7UTcPiPVifdyBkAS0iJcyJiIgCIiAIiIAiIgCIiAIiIAkESYgEYjEmIBGJGJlEAwjEyxEE2AJMRBAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIB//9k='),
              radius: 60,
            ),
            Text('UNICORN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                )),
            Text(
              'FLUTTER DEVEPLOPER',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      labelText: 'ENTER YOUR PHONE NUMBER',
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.phone, color: Colors.white)),
                )),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      labelText: 'ENTER YOUR E-MAIL',
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.mail, color: Colors.white)),
                )),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
